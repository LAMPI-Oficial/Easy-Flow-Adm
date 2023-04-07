import 'package:auto_size_text/auto_size_text.dart';

import 'package:easyflow/layers/modules/initial/widgets/subtitle_widget.dart';
import 'package:flutter/material.dart';

class TileRepresentativeWidget extends StatelessWidget {
  const TileRepresentativeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          height: 50,
          width: 44.0,
          child: FadeInImage(
            placeholder: const AssetImage(
              "assets/images/collab_bro_image.png",
            ),
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://assets.nintendo.com/image/upload/f_auto/q_auto/dpr_2.0/c_scale,w_400/ncom/pt_BR/games/switch/n/new-super-mario-bros-u-deluxe-switch/description-image",
            ),
          ),
        ),
      ),
      title: Card(
        elevation: 0,
        margin: const EdgeInsets.symmetric(vertical: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Container(
          width: 200,
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: AutoSizeText(
                      "Mário Jamisson",
                      maxLines: 1,
                      maxFontSize: 14,
                      style: const TextStyle(
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                          color: Color(
                            0xFF4A6F91,
                          ),
                          fontFamily: 'Segoe UI'),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 2, right: 2),
                          child: Icon(
                            Icons.verified_outlined,
                            size: 10,
                            color: Color(0xFF0085FF),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Text(
                              "Games",
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xFF0085FF),
                                fontFamily: 'Segoe UI',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 1),
                child: SubtitleWidget(
                  text: "mariojamisson@gmail.com",
                  icon: Icons.email_outlined,
                ),
              ),
              SubtitleWidget(
                text: "Segunda-Feira. Turno Manha",
                icon: Icons.alarm,
              )
            ],
          ),
        ),
      ),
    );
  }
}
