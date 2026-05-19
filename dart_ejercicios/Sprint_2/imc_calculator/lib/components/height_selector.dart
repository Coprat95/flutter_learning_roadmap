import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double selectedHeight;
  final Function(double) onHeightChange;
  const HeightSelector({super.key, required this.selectedHeight, required this.onHeightChange});
  

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double heightSelected = 170;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.only(left: 16,right: 16,top: 8,bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
          
          ),
        child: Column(
            children: [
              SizedBox(height: 12),
              Text('Altura'.toUpperCase(), style: TextStyles.bodyText),
              Text('${widget.selectedHeight.toStringAsFixed(0)} cm', style: TextStyle(fontSize: 30, color:Colors.white)),
              Slider(value: widget.selectedHeight, onChanged: (newHeight){
                setState(() {  // lo metemos aquí porque es donde cambia la UI
              widget.onHeightChange(newHeight);
                });
                
              },
              min: 150,
              max: 220,
              divisions: 70 , // (220-150) para que asigne una linea del slide por numero y no de decimal
              label: '${widget.selectedHeight.toStringAsFixed(0)} cm' ,
              activeColor: AppColors.primary,
              )
            ]
          ),
      ),
    );
    
  }
}