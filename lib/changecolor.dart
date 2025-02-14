import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/change_color_cubit.dart';
import 'package:testapp/change_color_state.dart';

class ColorBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Box')),
      body: BlocProvider(
        create: (context) => ChangeColorCubit(),
        child: BlocBuilder<ChangeColorCubit, ChangecolorState>(
          builder: (context, state) {
            Color? color;
            if (state is colorloaded) {
              color = state.color;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 100,
                        height: 100,
                        color: color // اللون يأتي من الحالة
                        ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ChangeColorCubit>()
                            .changeColor(); // تحديث اللون عند الضغط
                      },
                      child: Text('Change Color'),
                    ),
                  ],
                ),
              );
            } else {
              color = Colors.black;
              return ElevatedButton(
                onPressed: () {
                  context
                      .read<ChangeColorCubit>()
                      .changeColor(); // تحديث اللون عند الضغط
                },
                child: Text('Change Color'),
              );
            }
          },
        ),
      ),
    );
  }
}
