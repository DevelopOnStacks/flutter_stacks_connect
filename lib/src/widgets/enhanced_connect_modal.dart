import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../services/wallet_detection_service.dart';

class EnhancedConnectModal extends StatefulWidget {
  final List<WalletProviderList>? wallets;
  final Function(WalletProviderList) onSelect;
  final VoidCallback? onCancel;
  final String appName;
  final String appIcon;
  final Color? primaryColor;
  final Color? backgroundColor;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final BoxDecoration? modalDecoration;
  final Duration? autoCloseDuration;

  const EnhancedConnectModal({
    Key? key,
    this.wallets,
    required this.onSelect,
    this.onCancel,
    required this.appName,
    required this.appIcon,
    this.primaryColor,
    this.backgroundColor,
    this.titleStyle,
    this.subtitleStyle,
    this.modalDecoration,
    this.autoCloseDuration,
  }) : super(key: key);

  @override
  State<EnhancedConnectModal> createState() => _EnhancedConnectModalState();
}

class _EnhancedConnectModalState extends State<EnhancedConnectModal> {
  final WalletDetectionService _detectionService = WalletDetectionService();
  List<WalletProviderList>? _discoveredWallets;
  List<WalletProviderList> _installedWallets = [];
  bool _isLoading = true;
  String? _error;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _loadWallets();
    if (widget.autoCloseDuration != null) {
      _setupAutoClose();
    }
  }

  void _setupAutoClose() {
    Future.delayed(widget.autoCloseDuration!, () {
      if (mounted) {
        widget.onCancel?.call();
      }
    });
  }

  Future<void> _loadWallets() async {
    try {
      setState(() {
        _isLoading = true;
        _error = null;
      });

      _discoveredWallets = widget.wallets ?? [];
      _installedWallets = [];

      for (final wallet in _discoveredWallets!) {
        final isInstalled = await _detectionService.isWalletInstalled(wallet);
        if (isInstalled) {
          _installedWallets.add(wallet);
        }
      }

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  List<WalletProviderList> _getFilteredWallets(
      List<WalletProviderList> wallets) {
    if (_searchQuery.isEmpty) return wallets;
    return wallets
        .where((wallet) =>
            wallet.name.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: widget.backgroundColor ?? theme.dialogBackgroundColor,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: widget.modalDecoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: widget.backgroundColor ?? theme.dialogBackgroundColor,
            ),
        constraints: const BoxConstraints(maxWidth: 400, maxHeight: 600),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(),
            if (_isLoading) ...[
              const SizedBox(height: 32),
              Center(
                child: CircularProgressIndicator(
                  color: widget.primaryColor ?? theme.primaryColor,
                ),
              ),
            ] else if (_error != null) ...[
              _buildError(),
            ] else ...[
              const SizedBox(height: 16),
              Expanded(child: _buildWalletList()),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Connect Wallet',
          style: widget.titleStyle ??
              const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: widget.onCancel,
        ),
      ],
    );
  }

  Widget _buildError() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.error_outline,
          size: 48,
          color: Colors.red,
        ),
        const SizedBox(height: 16),
        Text(
          _error!,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.red),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _loadWallets,
          child: const Text('Retry'),
        ),
      ],
    );
  }

  Widget _buildWalletList() {
    final filteredWallets = _getFilteredWallets(_discoveredWallets ?? []);

    if (filteredWallets.isEmpty) {
      return const Center(
        child: Text('No wallets found'),
      );
    }

    return ListView.builder(
      itemCount: filteredWallets.length,
      itemBuilder: (context, index) {
        final wallet = filteredWallets[index];
        return _buildWalletCard(wallet);
      },
    );
  }

  Widget _buildWalletCard(WalletProviderList wallet) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: wallet.icon != null
            ? Image.network(
                wallet.icon!,
                width: 40,
                height: 40,
                errorBuilder: (_, __, ___) => const Icon(Icons.wallet),
              )
            : const Icon(Icons.wallet),
        title: Text(wallet.name),
        subtitle:
            wallet.webUrl != null ? Text(Uri.parse(wallet.webUrl!).host) : null,
        trailing: _installedWallets.contains(wallet)
            ? const Icon(Icons.check_circle, color: Colors.green)
            : TextButton(
                onPressed: () => _launchWalletWebsite(wallet),
                child: const Text('Install'),
              ),
        onTap: () => widget.onSelect(wallet),
      ),
    );
  }

  Future<void> _launchWalletWebsite(WalletProviderList wallet) async {
    if (wallet.webUrl != null) {
      final url = Uri.parse(wallet.webUrl!);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    }
  }
}
