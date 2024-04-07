// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:charityms/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import 'campaign_list.dart';

class BodyDetails extends StatelessWidget {
  final Campaign? campaign;

  const BodyDetails({Key? key, this.campaign}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 550,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(image: AssetImage("${campaign!.image!}")),
              ),
              // ProductPoster(
              //   size: size,
              //   image: campaign?.image,
              // ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20 / 1),
                child: Text(
                  "${campaign!.name!}",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                "\$${campaign!.price!}",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20 / 3),
                child: Text(
                  "type ${campaign!.type!}",
                  style: TextStyle(color: Color(0xff000839)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20 / 3),
                child: Text(
                  "beneficiaries ${campaign!.beneficiaries!}",
                  style: TextStyle(color: Color(0xff000839)),
                ),
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20 / 3),
                  child: Text(
                    "start in ${campaign!.start_date!}",
                    style: TextStyle(color: Color(0xff000839)),
                  ),
                ),
                SizedBox(
                  width: 82,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20 / 3),
                  child: Text(
                    "end in ${campaign!.end_date!}",
                    style: TextStyle(color: Color(0xff000839)),
                  ),
                ),
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20 / 3),
                  child: Text(
                    "amount ${campaign!.amount!}",
                    style: TextStyle(color: Color(0xff000839)),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20 / 3),
                  child: Text(
                    "amount_required ${campaign!.amount_required!}",
                    style: TextStyle(color: Color(0xff000839)),
                  ),
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              PrimaryButton(buttonText: "Donate")
            ],
          ),
        )
      ],
    );
  }
}

// class ProductPoster extends StatelessWidget {
//   const ProductPoster({
//     Key? key,
//     required this.size,
//     this.image,
//   }) : super(key: key);

//   final Size size;
//   final String? image;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 20),
//       height: 230,
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           Container(
//             height: 200,
//             width: 500,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//           ),
//           Image.asset(
//             image!,
//             height: 200,
//             width: 500,
//             fit: BoxFit.cover,
//           )
//         ],
//       ),
//     );
//   }
// }
