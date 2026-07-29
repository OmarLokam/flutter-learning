import 'package:flutter/material.dart';

class ProductCustomization extends StatelessWidget {
  final double spicinessValue;
  final int portionCount;
  final ValueChanged<double> onSpicinessChanged;
  final VoidCallback onPortionIncrement;
  final VoidCallback onPortionDecrement;

  const ProductCustomization({
    super.key,
    required this.spicinessValue,
    required this.portionCount,
    required this.onSpicinessChanged,
    required this.onPortionIncrement,
    required this.onPortionDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: _SpicinessSelector(
            value: spicinessValue,
            onChanged: onSpicinessChanged,
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          flex: 4,
          child: _PortionSelector(
            count: portionCount,
            onIncrement: onPortionIncrement,
            onDecrement: onPortionDecrement,
          ),
        ),
      ],
    );
  }
}

class _SpicinessSelector extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const _SpicinessSelector({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Spicy',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        const SizedBox(height: 4),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 12),
            activeTrackColor: const Color(0xFFE52030),
            inactiveTrackColor: Colors.grey[200],
            thumbColor: const Color(0xFFE52030),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Slider(value: value, onChanged: onChanged),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mild', style: TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.bold)),
              Text('Hot', style: TextStyle(color: Color(0xFFE52030), fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}

class _PortionSelector extends StatelessWidget {
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const _PortionSelector({
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Portion',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCounterButton(Icons.remove, onDecrement),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '$count',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildCounterButton(Icons.add, onIncrement),
          ],
        ),
      ],
    );
  }

  Widget _buildCounterButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFFE52030),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: Colors.white, size: 18),
      ),
    );
  }
}