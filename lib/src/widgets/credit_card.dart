import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Container(
        height: MediaQuery.of(context).size.height / 3.8,
        width: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.black, Colors.black54],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(5, 5),
              blurRadius: 10,
            )
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 38,
            right: 16,
            top: 16,
            bottom: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.rocket_launch_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'DgBank',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: const RotatedBox(
                                quarterTurns: 1,
                                child: Icon(
                                  Icons.chair_alt,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const RotatedBox(
                              quarterTurns: 1,
                              child: Icon(
                                Icons.wifi,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          '7777 6666 7777 6666',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Utilizar  função de credito'.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 6,
                          color: Colors.white,
                          letterSpacing: .3,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'VALID\nTHRU',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 8,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '08/25',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Douglas O. Biserra'.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Visa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
