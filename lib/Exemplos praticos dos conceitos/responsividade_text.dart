import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

/// Para utilizarmos a responsividade no Text, podemos usar um package -> auto_size_text

class ResponsividadeText extends StatefulWidget {
  const ResponsividadeText({Key? key}) : super(key: key);

  @override
  State<ResponsividadeText> createState() => _ResponsividadeTextState();
}

class _ResponsividadeTextState extends State<ResponsividadeText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade Text'),
      ),
      body: Column(
        children: const [
          AutoSizeText(
            '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
''',
            style: TextStyle(
              fontSize: 26,
            ),
            //para o maximo de linhas a ser exibido
            maxLines: 4,
            //para o tamanho minimo da letra quando a tela for diminuindo
            minFontSize: 12,
            //para colocar as reticencias ao final, quando o texto for cortado
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 50,
          ),
          AutoSizeText(
            '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
''',
            style: TextStyle(
              fontSize: 26,
            ),
            //para o maximo de linhas a ser exibido
            maxLines: 4,
            //para o tamanho minimo da letra quando a tela for diminuindo
            minFontSize: 12,
            //para colocar as reticencias ao final, quando o texto for cortado
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
