import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_exchange/Screenns/cubit/home_screens_cubit.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "             Money Exchange",
          style: TextStyle(
              fontSize: 25,
              color: Colors.amberAccent,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: BlocProvider(
        create: (context) => HomeScreensCubit(),
        child: BlocBuilder<HomeScreensCubit, HomeScreensState>(
          builder: (context, state) {
            final cubit = context.read<HomeScreensCubit>();
            return Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(

                    onChanged: (value) {
                      cubit.dollar();
                    },
                    controller: cubit.dollarCtr,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Type Dollar here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    onChanged: (value) {
                      cubit.rupees();
                    },
                    controller: cubit.rupeesCtr,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Type rupees here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
