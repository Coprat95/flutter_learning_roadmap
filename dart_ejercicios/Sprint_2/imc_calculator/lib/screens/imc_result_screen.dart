import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';
import 'package:imc_calculator/screens/imc_home_screen.dart';

class ImcResultScreen extends StatelessWidget {
  final int weight;
  final double height;

  const ImcResultScreen({
    super.key,
    required this.weight,
    required this.height,
  });

  
  
  @override
  Widget build(BuildContext context) {
    double heightOnM = height / 100;
    double imcResult = weight / (heightOnM * heightOnM);

    
    

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolbarResult(),

      body: Column(
        children: [
          SizedBox(height: 20),
          Text('Tu resultado', style: TextStyles.titleText),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundComponent,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),

            child: Column(
              children: [
                Text(
                  tipoMC(imcResult),
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
                SizedBox(height: 100),
                Text(
                  imcResult.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 100),
                Text(
                  descripcionImc(imcResult),
                  style: TextStyle(fontSize: 23, color: Colors.white),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              top: 10,
              right: 16,
              left: 16,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 600,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);   
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        AppColors.primary,
                      ),
                    ),
                    child: Text('Finalizar', style: TextStyles.bodyText),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolbarResult() {
    return AppBar(
      
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        'Resultado',

        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );

  }
  String tipoMC (double imcResult){
      String imc;
      switch (imcResult) {
        case < 21 :
        imc = 'Delgado';
        break;
        case < 25 :
          imc = 'Imc normal';
          break;
        case < 30 :
          imc = "Sobrepeso";
          break;
        default:
          imc = 'Obesidad';
          break;    
        
        }
        return imc;
      }
      String descripcionImc(double imcResult){
        String texto ;
        switch (imcResult) {
        case < 21 :
        texto = 'Tu peso está por debajo del recomendado.';
        break;
        case < 25 :
          texto = 'Tu peso está en el rango saludable.';
          break;
        case < 30 :
          texto = "Tu peso está por encima del recomendado.";
          break;
        default:
          texto = 'Tu peso está muy por encima del recomendado.';
          break;    
        
        }
        return texto;

      }


}
