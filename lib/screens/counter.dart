
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int i =0;
  bool state = true;
  bool show = true;
  bool statusSwitch = true;
  bool choice = true;
  String? name = 'Nada';
  int? age ;
  bool? Is = false;
  bool? Cs = false;
  bool? It = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFul Widget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            IconButton(onPressed: () {
              setState(() {
                i++;
              });
            }, icon: Icon(Icons.add),),
            Text('Counter $i',),
            IconButton(onPressed: () {
              setState(() {
                i--;
              });
            }, icon: Icon(Icons.remove),),

            Divider(thickness: 2,),
            IconButton(onPressed: () {
              setState(() {
                state = true;
              });
            }, icon: Icon(Icons.add),),
            state ? Icon(Icons.star) : Icon(Icons.star_border_outlined),
            IconButton(onPressed: () {
              setState(() {
                state = false ;
              });
            }, icon: Icon(Icons.remove),),

            Divider(thickness: 2,),
            IconButton(onPressed: () {
              setState(() {
                show = true;
              });
            }, icon:Icon(Icons.swipe_down_rounded),
            ),
            show ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
            IconButton(onPressed: () {
              setState(() {
                show = false;
              });
            }, icon: Icon(Icons.swipe_down_outlined)
            ),

            Divider(thickness: 2,),
            Switch(
              activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[200],
                value: statusSwitch,
                onChanged: (val) {
              setState(() {
                statusSwitch = val;
              });
            }),

            Divider(thickness: 2,),
            Container(
              color: Colors.grey,
              child: SwitchListTile(
                title: Text('Choice'),
                  value: choice,
                  onChanged: (val) {
                setState(() {
                  choice = val;
                });
              }),
            ),

            Divider(thickness: 2,),
            Container(
              child: Column(
                children: [
                  Text('Choice your name ',style: TextStyle(fontSize: 20),),
                  RadioListTile(
                    title: Text('Nada'),
                      value: 'Nada',
                      groupValue: name,
                      onChanged: (String? value)
                      {setState(() {
                          name = value;
                  });}
                  ),
                  RadioListTile(
                    title: Text('Aya'),
                      value: 'Aya',
                      groupValue: name,
                      onChanged: (String? value)
                      {setState(() {
                        name = value;
                      });}),
                  RadioListTile(
                      title: Text('Nora'),
                      value: 'Nora',
                      groupValue: name,
                      onChanged: (String? value)
                      {setState(() {
                        name = value;
                      });}),

                ],
              ),
            ),

            Divider(thickness: 2,),
            Container(
              child: Column(
                children: [
                  Text('Choice Your Age ',style: TextStyle(fontSize: 25),),
                  RadioListTile(
                    title: Text('10'),
                      value: 10,
                      groupValue: age,
                      onChanged: (int? val) {
                      setState(() {
                      age = val ;
                    });
                  }),
                  RadioListTile(
                      title: Text('20'),
                      value: 20,
                      groupValue: age,
                      onChanged: (int? val) {
                        setState(() {
                          age = val ;
                        });
                      }),
                  RadioListTile(
                      title: Text('30'),
                      value: 30,
                      groupValue: age,
                      onChanged: (int? val) {
                        setState(() {
                          age = val ;
                        });
                      }),
                  Text('Your Name is : $name',style: TextStyle(fontSize: 25),),
                  Text('Your Age is : $age',style: TextStyle(fontSize: 25),),


                ],
              ),
            ),

            Divider(thickness: 2,),
            Container(
              child: Column(
                children: [
                  Text('Choice Your Department ',style: TextStyle(fontSize: 25),),
                  CheckboxListTile(
                    title: Text('Is'),
                      value: Is, onChanged: (val) {
                    setState(() {
                      Is = val!;
                    });
                  }),
                  CheckboxListTile(
                      title: Text('Cs'),
                      value: Cs, onChanged: (val) {
                    setState(() {
                      Cs = val!;
                    });
                  }),
                  CheckboxListTile(
                      title: Text('IT'),
                      value: It, onChanged: (val) {
                    setState(() {
                      It = val!;
                    });
                  }),

                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
