import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List conselhos = [
    'Mantenha-se hidratado bebendo água regularmente ao longo do dia.',
    'Dedique um tempo todos os dias para a atividade física, mesmo que seja apenas uma caminhada.',
    'Leia diariamente para expandir seus conhecimentos e habilidades.',
    'Desligue as telas e desconecte-se do mundo digital regularmente para reduzir o estresse e aumentar a atenção plena.',
    'Seja grato pelas coisas boas da sua vida, mesmo nas situações difíceis.',
    'Pratique a resiliência para superar os desafios e obstáculos da vida.',
    'Mantenha um estilo de vida equilibrado, com uma dieta saudável e horas suficientes de sono.',
    'Aprenda a dizer não para atividades ou situações que não contribuem para sua felicidade ou bem-estar.',
    'Pratique a empatia e tente ver as coisas do ponto de vista dos outros.',
    'Desenvolva sua autoconfiança, acreditando em suas habilidades e capacidades.',
    'Mantenha relacionamentos positivos e construtivos com as pessoas ao seu redor.',
    'Aprenda a perdoar os outros e a si mesmo para promover a paz interior.',
    'Pratique a organização e planejamento para aumentar a produtividade e reduzir o estresse.',
    'Seja honesto consigo mesmo e com os outros, mesmo em situações difíceis.',
    'Cultive hobbies e interesses pessoais para manter uma mente criativa e saudável.',
    'Seja gentil e generoso com os outros, espalhando amor e bondade sempre que possível.',
    'Aprenda a gerenciar seu tempo efetivamente, evitando procrastinação e desperdício de tempo.',
    'Permaneça positivo e otimista, mesmo nas situações difíceis.',
    'Aprenda a lidar com o estresse de maneiras saudáveis, como exercícios de respiração, meditação ou yoga.',
    'Sempre procure aprender coisas novas e expandir seu conhecimento e habilidades.',
  ];

  void gerarConselho() {
    var gerarNumero = Random().nextInt(conselhos.length);
    var conselhoSorteado = conselhos[gerarNumero];
    setState(() {
      if (palavra != conselhoSorteado)
        palavra = conselhoSorteado;
      else
        gerarConselho();
    });
  }

  var palavra = 'Clique abaixo para gerar o conselho';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Conselheiro - HITCH'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/imagens/images.png'),
              radius: 60,
            ),
            Text(
              palavra,
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: gerarConselho,
              child: Text('Gerar'),
            )
          ],
        ),
      ),
    );
  }
}
