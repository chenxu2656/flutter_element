import 'package:flutter/material.dart';
import 'package:flutter_element/flutter_element.dart';

class CheckboxPage extends StatelessWidget {
  const CheckboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Examples'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Basic Checkbox',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Row(
              children: [
                ECheckbox(
                  label: 'Option 1',
                  onChange: (value) {
                    print('Option 1: $value');
                  },
                ),
                const SizedBox(width: 16),
                ECheckbox(
                  label: 'Option 2',
                  onChange: (value) {
                    print('Option 2: $value');
                  },
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text('Disabled Checkbox',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Row(
              children: [
                ECheckbox(
                  label: 'Disabled',
                  disabled: true,
                  onChange: (value) {
                    print('Disabled: $value');
                  },
                ),
                const SizedBox(width: 16),
                ECheckbox(
                  label: 'Not disabled',
                  onChange: (value) {
                    print('Not disabled: $value');
                  },
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text('Checkbox Group',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            ECheckboxGroup(
              value: ['Option A'],
              onChange: (values) {
                print('Selected values: $values');
              },
              children: [
                ECheckbox(label: 'Option A'),
                ECheckbox(label: 'Option B'),
                ECheckbox(label: 'Option C'),
                ECheckbox(label: 'Disabled', disabled: true),
                ECheckbox(label: 'Selected and disabled', disabled: true),
              ],
            ),
            const SizedBox(height: 32),
            const Text('Indeterminate Checkbox',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Row(
              children: [
                ECheckbox(
                  label: 'Check all',
                  indeterminate: true,
                  onChange: (value) {
                    print('Check all: $value');
                  },
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text('Checkbox with Border',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Row(
              children: [
                ECheckbox(
                  label: 'Option 1',
                  border: true,
                  onChange: (value) {
                    print('Option 1 with border: $value');
                  },
                ),
                const SizedBox(width: 16),
                ECheckbox(
                  label: 'Option 2',
                  border: true,
                  onChange: (value) {
                    print('Option 2 with border: $value');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
