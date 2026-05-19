import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender; // genero seleccionado para el if  (nullable)

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Hombre
        Expanded(
          child: GestureDetector(
            onTap: () {
              // Al clickar en él
              setState(() {
                // Hay que llamarlo cuando vayamos a modificar la UI
                selectedGender = 'Hombre';
              });
            },
            child: Padding(
              padding: EdgeInsetsGeometry.only(
                left: 16,
                right: 8,
                top: 16,
                bottom: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == 'Hombre'
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/male.png',
                        color: Colors.white,
                        height: 100,
                      ),
                      Text('Hombre'.toUpperCase(), style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        //Mujer
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = 'Mujer';
              });
            },
            child: Padding(
              padding: const EdgeInsetsGeometry.only(
                left: 8,
                right: 16,
                top: 16,
                bottom: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == 'Mujer'
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/female.png',
                        color: Colors.white,
                        height: 100,
                      ),
                      Text('Mujer'.toUpperCase(), style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
