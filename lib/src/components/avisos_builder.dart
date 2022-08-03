import 'package:flutter/material.dart';

import '../../behavior.dart';
import '../widgets/card_avisos_widget.dart';

class AvisosBuilder extends StatelessWidget {
  const AvisosBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.height / 2,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ScrollConfiguration(
            behavior: ScrollBehaviorCustom(),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (context, _) => const SizedBox(
                width: 10,
              ),
              itemBuilder: (context, _) => CardAviso(
                title: 'Douglas Oliveira',
                subtitle: 'Developement',
                texto: const Text(
                  'Tentando melhorar o card de avisos, atualizar ele hoje,testando se funciona esse card, pois esta quebrando aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa ',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
                imageUrl:
                    "https://engenharia360.com/wp-content/uploads/2019/05/esta-pessoa-nao-existe-engenharia360-4.png",
                icon: Icons.more_horiz,
                guiaAviso: const Text(
                  'Guia pratico tools.pdf',
                  style: TextStyle(fontSize: 10),
                ),
                dataAviso: const Text(
                  'postado às 8:23 em 20/07/2022',
                  style: TextStyle(fontSize: 10),
                ),
                onpressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
