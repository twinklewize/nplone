import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/core/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/core/ui_kit/widgets/textfield.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/widgets/transaction_details_page_widgets/message_bubble_widget.dart';

class TransactionDetailsPage extends StatefulWidget {
  const TransactionDetailsPage({Key? key}) : super(key: key);
  static const routeName = '/transaction-details';

  @override
  _TransactionDetailsPageState createState() => _TransactionDetailsPageState();
}

class _TransactionDetailsPageState extends State<TransactionDetailsPage> {
  TextEditingController newCommentEditingContriller = TextEditingController();

  // am I owner of this tx
  bool amIOwner = true;

  // common ui booleans
  bool isDetailsHidden = true;
  bool isFilesHidden = true;

  // booleans for hide some props
  bool isMessageVisible = true;
  bool isTxTypeVisible = true;
  bool isOriginatorVisible = true;
  bool isRecieverVisible = true;
  bool isSenderVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.gray1,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: AppColors.gray1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // common info
              Container(
                width: MediaQuery.of(context).size.width - 24,
                decoration: BoxDecoration(
                  color: AppColors.frontGray2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    // contragent's image
                    SizedBox(
                      height: 48,
                      width: 48,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          'https://cryptomic.ru/wp-content/uploads/2021/03/Skidka-na-komissii-v-Binance.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Binance.com',
                      style: AppTextStyles.regular14pt,
                    ),
                    SizedBox(height: 12),
                    Text(
                      '-\$10,245.32',
                      style: AppTextStyles.bold20pt,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Feb 15 2021, 09:41, München',
                      style: AppTextStyles.regular14pt.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    isDetailsHidden
                        ? SizedBox()
                        : Column(
                            children: [
                              SizedBox(height: 24),
                              // info
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor:
                                      AppColors.white.withOpacity(0.1),
                                  child: SvgPicture.asset(
                                    'assets/icons/Info.svg',
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: isMessageVisible
                                    ? Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color:
                                              AppColors.white.withOpacity(0.1),
                                        ),
                                        constraints: BoxConstraints(
                                          maxWidth: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.7,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          child: Text(
                                            'Yea, I have bought a 10 top new coins for our Finance Department. Who is great? I am.',
                                            style: AppTextStyles.regular16pt,
                                          ),
                                        ),
                                      )
                                    : Image.asset(
                                        'assets/images/hiden_info.png'),
                                trailing: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isMessageVisible = !isMessageVisible;
                                    });
                                  },
                                  child: amIOwner
                                      ? isMessageVisible
                                          ? SvgPicture.asset(
                                              'assets/icons/visible.svg',
                                            )
                                          : SvgPicture.asset(
                                              'assets/icons/invisible.svg',
                                            )
                                      : SizedBox(),
                                ),
                              ),
                              SizedBox(height: 12),
                              Divider(
                                color: AppColors.gray1,
                                thickness: 1,
                              ),

                              // TX type
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor:
                                      AppColors.white.withOpacity(0.1),
                                  child: SvgPicture.asset(
                                    'assets/icons/right_arrow.svg',
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text(
                                  'Transaction type',
                                  style: AppTextStyles.regular14pt.copyWith(
                                    color: AppColors.gray3rd,
                                  ),
                                ),
                                subtitle: isTxTypeVisible
                                    ? Text(
                                        'Pay',
                                        style: AppTextStyles.regular14pt,
                                      )
                                    : Image.asset(
                                        'assets/images/hiden_info.png',
                                      ),
                                trailing: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isTxTypeVisible = !isTxTypeVisible;
                                    });
                                  },
                                  child: amIOwner
                                      ? isTxTypeVisible
                                          ? SvgPicture.asset(
                                              'assets/icons/visible.svg',
                                            )
                                          : SvgPicture.asset(
                                              'assets/icons/invisible.svg',
                                            )
                                      : SizedBox(),
                                ),
                              ),
                              Divider(
                                color: AppColors.gray1,
                                thickness: 1,
                              ),
                              // originator
                              ListTile(
                                leading: SizedBox(
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
                                title: Text(
                                  'Originator',
                                  style: AppTextStyles.regular14pt.copyWith(
                                    color: AppColors.gray3rd,
                                  ),
                                ),
                                subtitle: isOriginatorVisible
                                    ? Text(
                                        'Anton Smith',
                                        style: AppTextStyles.regular14pt,
                                      )
                                    : Image.asset(
                                        'assets/images/hiden_info.png',
                                      ),
                                trailing: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isOriginatorVisible =
                                          !isOriginatorVisible;
                                    });
                                  },
                                  child: amIOwner
                                      ? isOriginatorVisible
                                          ? SvgPicture.asset(
                                              'assets/icons/visible.svg',
                                            )
                                          : SvgPicture.asset(
                                              'assets/icons/invisible.svg',
                                            )
                                      : SizedBox(),
                                ),
                              ),
                              Divider(color: AppColors.gray1, thickness: 1),

                              // reciever
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor:
                                      AppColors.white.withOpacity(0.1),
                                  child: SvgPicture.asset(
                                    'assets/icons/Info.svg',
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text(
                                  'Reciever',
                                  style: AppTextStyles.regular14pt.copyWith(
                                    color: AppColors.gray3rd,
                                  ),
                                ),
                                subtitle: isRecieverVisible
                                    ? Text(
                                        'Commerzbank, Muhnauser Str.18, Grossengottern, Germany',
                                        style: AppTextStyles.regular14pt,
                                      )
                                    : Image.asset(
                                        'assets/images/hiden_info.png',
                                      ),
                                trailing: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isRecieverVisible = !isRecieverVisible;
                                    });
                                  },
                                  child: amIOwner
                                      ? isRecieverVisible
                                          ? SvgPicture.asset(
                                              'assets/icons/visible.svg',
                                            )
                                          : SvgPicture.asset(
                                              'assets/icons/invisible.svg',
                                            )
                                      : SizedBox(),
                                ),
                              ),
                              Divider(color: AppColors.gray1, thickness: 1),
                              // sender
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor:
                                      AppColors.white.withOpacity(0.1),
                                  child: SvgPicture.asset(
                                    'assets/icons/Info.svg',
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text(
                                  'Sender',
                                  style: AppTextStyles.regular14pt.copyWith(
                                    color: AppColors.gray3rd,
                                  ),
                                ),
                                subtitle: isSenderVisible
                                    ? Text(
                                        'Revolut IBAN, DE2810011001*******322',
                                        style: AppTextStyles.regular14pt,
                                      )
                                    : Image.asset(
                                        'assets/images/hiden_info.png',
                                      ),
                                trailing: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSenderVisible = !isSenderVisible;
                                    });
                                  },
                                  child: amIOwner
                                      ? isSenderVisible
                                          ? SvgPicture.asset(
                                              'assets/icons/visible.svg',
                                            )
                                          : SvgPicture.asset(
                                              'assets/icons/invisible.svg',
                                            )
                                      : SizedBox(),
                                ),
                              ),
                            ],
                          ),
                    Divider(color: AppColors.gray1, thickness: 1),
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isDetailsHidden = !isDetailsHidden;
                        });
                      },
                      child: Text(
                        isDetailsHidden ? 'View Details ->' : 'Hide Details ->',
                        style: AppTextStyles.regular14pt.copyWith(
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),

              SizedBox(height: 28),

              // posted by
              ListTile(
                leading: SizedBox(
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
                title: Text(
                  'Posted by:',
                  style: AppTextStyles.regular14pt.copyWith(
                    color: AppColors.gray3rd,
                  ),
                ),
                subtitle: Text(
                  'Anton Smith (owner)',
                  style: AppTextStyles.regular14pt,
                ),
                trailing: SvgPicture.asset('assets/icons/instagram.svg'),
              ),

              // Information is Reliable
              ListTile(
                leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: CircleAvatar(
                    backgroundColor: AppColors.green.withOpacity(0.2),
                    child: Icon(
                      Icons.check,
                      color: AppColors.green,
                    ),
                  ),
                ),
                title: Text(
                  'Information is Reliable',
                  style: AppTextStyles.regular14pt.copyWith(
                    color: AppColors.frontGreen,
                  ),
                ),
                subtitle: Text(
                  'Last Update: 12.11.2021 at 12:33',
                  style: AppTextStyles.regular14pt,
                ),
              ),

              // Attachment files: 3
              ListTile(
                leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: CircleAvatar(
                    backgroundColor: AppColors.green.withOpacity(0.2),
                    child: SvgPicture.asset(
                      'assets/icons/screp.svg',
                      color: AppColors.green,
                    ),
                  ),
                ),
                title: Text(
                  'Attachment files: 3',
                  style: AppTextStyles.regular14pt,
                ),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFilesHidden = !isFilesHidden;
                    });
                  },
                  child: SvgPicture.asset(
                    isFilesHidden
                        ? 'assets/icons/show_more_down_arrow.svg'
                        : 'assets/icons/up_arrow.svg',
                  ),
                ),
              ),

              // файлы
              isFilesHidden
                  ? SizedBox()
                  : Column(
                      children: [
                        ListTile(
                          leading: SvgPicture.asset('assets/icons/docs.svg'),
                          title: Text(
                            'Company.doc',
                            style: AppTextStyles.medium14pt,
                          ),
                          subtitle: Text(
                            '10.1 MB',
                            style: AppTextStyles.regular14pt.copyWith(
                              color: AppColors.gray3rd,
                            ),
                          ),
                          trailing: amIOwner
                              ? SizedBox(
                                  width: 88,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icons/download.svg'),
                                      SizedBox(width: 8),
                                      SvgPicture.asset(
                                          'assets/icons/delete_file.svg'),
                                    ],
                                  ),
                                )
                              : SvgPicture.asset('assets/icons/download.svg'),
                        ),
                        ListTile(
                          leading: SvgPicture.asset('assets/icons/pdf.svg'),
                          title: Text(
                            'Company.doc',
                            style: AppTextStyles.medium14pt,
                          ),
                          subtitle: Text(
                            '10.1 MB',
                            style: AppTextStyles.regular14pt.copyWith(
                              color: AppColors.gray3rd,
                            ),
                          ),
                          trailing: amIOwner
                              ? SizedBox(
                                  width: 88,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icons/download.svg'),
                                      SizedBox(width: 8),
                                      SvgPicture.asset(
                                          'assets/icons/delete_file.svg'),
                                    ],
                                  ),
                                )
                              : SvgPicture.asset('assets/icons/download.svg'),
                        ),
                        ListTile(
                          leading: SvgPicture.asset('assets/icons/pptx.svg'),
                          title: Text(
                            'Company.doc',
                            style: AppTextStyles.medium14pt,
                          ),
                          subtitle: Text(
                            '10.1 MB',
                            style: AppTextStyles.regular14pt.copyWith(
                              color: AppColors.gray3rd,
                            ),
                          ),
                          trailing: amIOwner
                              ? SizedBox(
                                  width: 88,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icons/download.svg'),
                                      SizedBox(width: 8),
                                      SvgPicture.asset(
                                          'assets/icons/delete_file.svg'),
                                    ],
                                  ),
                                )
                              : SvgPicture.asset('assets/icons/download.svg'),
                        ),
                      ],
                    ),

              SizedBox(height: 25),

              Text(
                '3 Comments',
                style: AppTextStyles.medium14pt,
              ),

              SizedBox(height: 12),

              // comments
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    MessageBubbleWidget(
                      msg:
                          'Yea, I have bought a 10 top new coins for our Finance Department. ',
                      formattedDateTime: '23 Nov 19:34',
                      senderId: 'notmyId',
                    ),
                    MessageBubbleWidget(
                      msg: 'ok',
                      formattedDateTime: '23 Nov 19:34',
                      senderId: 'notmyId',
                    ),
                    MessageBubbleWidget(
                      msg:
                          'We are inspired and improved at international professional exhibitions and specialized events. We personally communicate with representatives of exclusive furniture brands and often use furniture made according to individual sketches in our projects.',
                      formattedDateTime: '23 Nov 19:34',
                      senderId: 'notmyId',
                    ),
                    MessageBubbleWidget(
                      msg: 'Good Job! It’s my comment.',
                      formattedDateTime: '23 Nov 19:34',
                      senderId: 'myId',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // кнопки post & actions
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LongFilledButton(
                      buttonColor: AppColors.green.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 24),
                          SvgPicture.asset(
                            'assets/icons/screp.svg',
                            color: AppColors.green,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Post in Shared Zone',
                            style: AppTextStyles.regular16pt.copyWith(
                              color: AppColors.green,
                            ),
                          ),
                          SizedBox(width: 24),
                        ],
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 8),
                    LongFilledButton(
                      buttonColor: AppColors.green.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 24),
                          SvgPicture.asset(
                            'assets/icons/ooo.svg',
                            color: AppColors.green,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Actions',
                            style: AppTextStyles.regular16pt.copyWith(
                              color: AppColors.green,
                            ),
                          ),
                          SizedBox(width: 24),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // new comment textfeild
              Container(
                child: SafeArea(
                  top: false,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 15),

                        // add button
                        GestureDetector(
                          onTap: () async {
                            print('сначала введите сообщение');
                          },
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(width: 15),

                        // write message textfield
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                color: AppColors.gray2,
                                borderRadius: BorderRadius.circular(10)),
                            child: MyTextField(
                              onChanged: (value) {},
                              controller: newCommentEditingContriller,
                              fillColor: AppColors.gray1,
                              labelText: 'Comment',
                              keyboardType: TextInputType.multiline,
                              textInputAction: TextInputAction.send,
                              maxLines: 4,
                              minLines: 1,
                              inputTextColor: AppColors.white,
                            ),
                          ),
                        ),

                        SizedBox(width: 15),

                        // send button
                        GestureDetector(
                          onTap: () async {
                            print('сначала введите сообщение');
                          },
                          child: Icon(
                            Icons.send_rounded,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
