import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

class MessageBubbleWidget extends StatelessWidget {
  final String msg;
  final String senderId;
  final String formattedDateTime;

  MessageBubbleWidget({
    required this.msg,
    required this.senderId,
    required this.formattedDateTime,
  });

  Widget myCommentWidget(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color.fromRGBO(41, 126, 225, 0.25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // comment text
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    msg + "",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                // reactions and datetime
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.gray1,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text('👍'),
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.gray1,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text('🔥'),
                        ),
                      ),
                      Spacer(),
                      //real additionalInfo
                      Text(
                        formattedDateTime,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color.fromRGBO(109, 120, 133, 1),
                        ),
                      ),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
          SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget contragentCommentWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12, bottom: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  'https://comp-pro.ru/wp-content/uploads/e/5/e/e5ea76b2dd0cdd861c159d837ccb6e80.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12),
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color.fromRGBO(44, 45, 46, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // datetime
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12, right: 12, left: 12),
                    child: Text(
                      'nickname',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          //real message
                          TextSpan(
                            text: msg + "",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // reactions and datetime
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.gray1,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text('👍'),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.gray1,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text('🔥'),
                          ),
                        ),
                        Spacer(),
                        //real additionalInfo
                        Text(
                          formattedDateTime,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(109, 120, 133, 1),
                          ),
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: senderId == 'myId'
            ? myCommentWidget(context)
            : contragentCommentWidget(context),
      ),
    );
  }
}
