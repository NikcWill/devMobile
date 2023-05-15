import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EmpresaPage extends StatefulWidget {
  const EmpresaPage({super.key});

  @override
  State<EmpresaPage> createState() => _EmpresaPageState();
}

class _EmpresaPageState extends State<EmpresaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresa'),
      ),
      body: SingleChildScrollView(
        child:
        Container(
        
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/imagens/detalhe_empresa.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Sobre a empresa",
                    style: TextStyle(color: Colors.orange, fontSize: 30),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child:
                  Flexible(
                  child: Wrap(
                    children: [
                      Text("A ATM Consultoria de Serviços é uma empresa especializada em consultoria empresarial e de tecnologia, que atua há mais de 20 anos no mercado, oferecendo soluções inovadoras e personalizadas para seus clientes. A empresa tem como objetivo principal ajudar as empresas a alcançarem seus objetivos e superarem seus desafios, por meio de uma equipe de consultores altamente qualificados e experientes em diversas áreas de atuação. Entre os serviços oferecidos pela ATM Consultoria de Serviços, destacam-se a consultoria empresarial, a consultoria de tecnologia, a auditoria de sistemas, a gestão de projetos, a gestão de processos e a gestão de mudanças. A consultoria empresarial tem como objetivo ajudar as empresas a melhorar sua eficiência, aumentar a produtividade e se manterem competitivas no mercado. Os consultores da ATM podem auxiliar na análise de processos, identificação de oportunidades de melhoria, desenvolvimento de estratégias de negócios e implementação de soluções. Já a consultoria de tecnologia tem como foco a análise e implementação de soluções tecnológicas que possam ajudar a empresa a melhorar sua eficiência e aumentar sua competitividade no mercado. Os consultores da ATM são especializados em diversas áreas, como desenvolvimento de softwares, análise de dados, infraestrutura de TI e segurança da informação. A auditoria de sistemas é outro serviço importante oferecido pela ATM Consultoria de Serviços, que visa avaliar a segurança e integridade dos sistemas de informação das empresas. Os consultores podem identificar vulnerabilidades e propor soluções para aumentar a segurança das informações e reduzir os riscos de perda ou roubo de dados. Além desses serviços, a ATM Consultoria de Serviços também oferece gestão de projetos, gestão de processos e gestão de mudanças, que podem ajudar as empresas a implementarem mudanças e melhorias de forma mais eficiente e organizada. Em resumo, a ATM Consultoria de Serviços é uma empresa especializada em consultoria empresarial e de tecnologia, que oferece soluções personalizadas e inovadoras para seus clientes. Com uma equipe de consultores altamente qualificados e experientes, a empresa pode ajudar as empresas a alcançarem seus objetivos e superarem seus desafios, de forma eficiente e organizada.",
                      style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
            )
      ],
      ),),
    ),);
  }
}
