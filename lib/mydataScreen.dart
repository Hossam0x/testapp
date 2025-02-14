import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/get_all_data_cubit.dart';

class MyDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cubit Example')),
      body: BlocProvider(
        create: (_) => GetAllDataCubit(),
        child: BlocBuilder<GetAllDataCubit, MyDataState>(
          builder: (context, state) {
            if (state is MyDataLoaded) {
              final data2 = context.read<GetAllDataCubit>().emitData();

              print(
                  "Data from state: ${state.data}"); // طباعة البيانات من الحالة
              final data = state.data;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data2[index]),
                  );
                },
              );
            }

            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<GetAllDataCubit>().emitData();
                },
                child: Text('Load Data'),
              ),
            );
          },
        ),
      ),
    );
  }
}
