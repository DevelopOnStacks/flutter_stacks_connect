import 'package:flutter/material.dart';
import '../models/models.dart';
import '../utils/stacks_utils.dart';

class TransactionForm extends StatefulWidget {
  final void Function(StacksTransaction) onSubmit;
  final NetworkConfig network;
  final String? initialRecipient;
  final BigInt? initialAmount;

  const TransactionForm({
    Key? key,
    required this.onSubmit,
    this.network = NetworkConfig.mainnet, // Changed from StacksNetwork
    this.initialRecipient,
    this.initialAmount,
  }) : super(key: key);

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _recipientController;
  late TextEditingController _amountController;
  late TextEditingController _memoController;

  @override
  void initState() {
    super.initState();
    _recipientController = TextEditingController(text: widget.initialRecipient);
    _amountController = TextEditingController(
      text: widget.initialAmount?.toString() ?? '',
    );
    _memoController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _recipientController,
            decoration: const InputDecoration(
              labelText: 'Recipient Address',
              hintText: 'Enter STX address',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter recipient address';
              }
              if (!StacksUtils.isValidStacksAddress(value)) {
                return 'Invalid Stacks address';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _amountController,
            decoration: const InputDecoration(
              labelText: 'Amount (in microSTX)',
              hintText: 'Enter amount',
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter amount';
              }
              try {
                BigInt.parse(value);
                return null;
              } catch (_) {
                return 'Invalid amount';
              }
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _memoController,
            decoration: const InputDecoration(
              labelText: 'Memo (optional)',
              hintText: 'Enter memo',
            ),
            maxLength: 34,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final transaction = StacksTransaction(
                  type: TransactionType.stxTransfer,
                  recipient: _recipientController.text,
                  amount: BigInt.parse(_amountController.text),
                  memo: _memoController.text.isEmpty
                      ? null
                      : _memoController.text,
                  network: widget.network,
                );
                widget.onSubmit(transaction);
              }
            },
            child: const Text('Send Transaction'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _recipientController.dispose();
    _amountController.dispose();
    _memoController.dispose();
    super.dispose();
  }
}
