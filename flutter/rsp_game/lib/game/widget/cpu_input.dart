import 'package:flutter/material.dart';
import 'package:rsp_game/game/widget/input_card.dart';

import '../enum.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({required this.isDone,required this.cpuInput,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SizedBox.shrink()),
        Expanded(child: InputCard(child: getCpuInput())),
        Expanded(child: SizedBox.shrink()),
      ],
    );
  }
  Widget getCpuInput(){
    if(isDone){
      return Image.asset(cpuInput.path);
    }
    return const SizedBox(width :64, height : 64, child : Center(child: Text('?', style: TextStyle(fontSize: 40),)));
  }
}
