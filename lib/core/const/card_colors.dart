import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tugas_magang_hub/core/widgets/card_color_model.dart';


const purpleColor = Color(0xFF572096);
const shadowPurple = Color(0xFF804eba);

class CardColors {
  // 1. Red
  static const HoverColorModel hoverRedLight =
  HoverColorModel(card: Color(0xffe68383), shadow: Color(0xffb94c4c), text: Color(0xff831313));
  static const HoverColorModel hoverRed =
  HoverColorModel(card: Color(0xff831313), shadow: Color(0xff640d0d), text: Color(0xffeab4b4));
  static const CardColorModel redPastel = CardColorModel(
    card: Color(0xffFDA2A2),
    shadow: Color(0xffE68383),
    text: Color(0xff831313),
    hover: hoverRed,
  );
  static const CardColorModel redPrimary = CardColorModel(
      card: Color(0xffe68383), shadow: Color(0xffb94c4c), text: Color(0xff831313), hover: hoverRed);
  static const CardColorModel redSecondary = CardColorModel(
      card: Color(0xffb94c4c), shadow: Color(0xff831313), text: Color(0xffeab4b4), hover: hoverRed);
  static const CardColorModel redTertiary = CardColorModel(
      card: Color(0xff831313),
      shadow: Color(0xff640D0D),
      text: Color(0xffEAB4B4),
      hover: hoverRedLight);

  // 2. Orange
  static const HoverColorModel hoverOrange =
  HoverColorModel(card: Color(0xff9c4a1d), shadow: Color(0xff72300c), text: Color(0xffefd0be));
  static const CardColorModel orangePastel = CardColorModel(
    card: Color(0xffFACDB0),
    shadow: Color(0xffE6A983),
    text: Color(0xff9C4A1D),
    hover: hoverOrange,
  );
  static const CardColorModel orangePrimary = CardColorModel(
      card: Color(0xffe6a983),
      shadow: Color(0xffb9724c),
      text: Color(0xff9c4a1d),
      hover: hoverOrange);
  static const CardColorModel orangeSecondary = CardColorModel(
      card: Color(0xffb9724d),
      shadow: Color(0xff9c4a1d),
      text: Color(0xffefd0be),
      hover: hoverOrange);
  static const CardColorModel orangeTertiary = CardColorModel(
      card: Color(0xff9c4a1d),
      shadow: Color(0xff72300c),
      text: Color(0xffefd0be),
      hover: hoverOrange);

  // 3. Yellow
  static const HoverColorModel hoverYellow =
  HoverColorModel(card: Color(0xff928214), shadow: Color(0xff6e610c), text: Color(0xfff0e9b6));
  static const CardColorModel tutorBrass = CardColorModel(
    card: Color(0xffFFFAD7),
    shadow: Color(0xffE6CB83),
    text: Color(0xff928214),
    hover: hoverYellow,
  );
  static const CardColorModel yellowPrimary = CardColorModel(
      card: Color(0xffe6cb83),
      shadow: Color(0xffb9ad4e),
      text: Color(0xff928214),
      hover: hoverYellow);
  static const CardColorModel yellowSecondary = CardColorModel(
      card: Color(0xffb9ad4e),
      shadow: Color(0xff928214),
      text: Color(0xfff0e9b6),
      hover: hoverYellow);
  static const CardColorModel yellowBlue = CardColorModel(
      card: Color(0xffe6cb83),
      shadow: Color(0xff4d77b9),
      text: Color(0xff928214),
      hover: hoverYellow);
  static const CardColorModel yellowTertiary = CardColorModel(
      card: Color(0xff928214),
      shadow: Color(0xff6e610c),
      text: Color(0xfff0e9b6),
      hover: hoverYellow);
  static const CardColorModel yellowPastel = CardColorModel(
      card: Color(0xffF1EFBB),
      shadow: Color(0xffDEE683),
      text: Color(0xff938E14),
      hover: hoverYellow);

  // 4. Lime
  static const HoverColorModel hoverLime =
  HoverColorModel(card: Color(0xff938e14), shadow: Color(0xff69650c), text: Color(0xfff0eea8));
  static const CardColorModel limePastel = CardColorModel(
    card: Color(0xffF1EFBB),
    shadow: Color(0xffDEE683),
    text: Color(0xff938E14),
    hover: hoverYellow,
  );
  static const CardColorModel limePrimary = CardColorModel(
      card: Color(0xffdee683),
      shadow: Color(0xffc6c12b),
      text: Color(0xff938e11),
      hover: hoverLime);
  static const CardColorModel limeSecondary = CardColorModel(
      card: Color(0xffc4bf34),
      shadow: Color(0xff938e11),
      text: Color(0xfff0eea8),
      hover: hoverLime);
  static const CardColorModel limeTertiary = CardColorModel(
      card: Color(0xff938e14),
      shadow: Color(0xff69650c),
      text: Color(0xfff0eea8),
      hover: hoverLime);

  // 5. Light Green
  static const HoverColorModel hoverLightGreen =
  HoverColorModel(card: Color(0xff60951a), shadow: Color(0xffccf2af), text: Color(0xffccf2af));
  static const CardColorModel lightGreenPastel = CardColorModel(
    card: Color(0xffD6F5C0),
    shadow: Color(0xffADE683),
    text: Color(0xff60951A),
    hover: hoverLightGreen,
  );
  static const CardColorModel lightGreenPrimary = CardColorModel(
      card: Color(0xffade683),
      shadow: Color(0xff8cb94d),
      text: Color(0xff60951a),
      hover: hoverLightGreen);
  static const CardColorModel lightGreenSecondary = CardColorModel(
      card: Color(0xff8cb94d),
      shadow: Color(0xff60951a),
      text: Color(0xffccf2af),
      hover: hoverLightGreen);
  static const CardColorModel lightGreenTertiary = CardColorModel(
      card: Color(0xff60951a),
      shadow: Color(0xffccf2af),
      text: Color(0xffccf2af),
      hover: hoverLightGreen);

  // 6. Green
  static const HoverColorModel hoverGreen =
  HoverColorModel(card: Color(0xff2c8e1e), shadow: Color(0xff175c10), text: Color(0xffb1f8d7));
  static const CardColorModel greenPastel = CardColorModel(
    card: Color(0xffB6FFDD),
    shadow: Color(0xff83E6B8),
    text: Color(0xff2C8E1E),
    hover: hoverGreen,
  );
  static const CardColorModel greenPrimary = CardColorModel(
      card: Color(0xff83e6b8),
      shadow: Color(0xff59b94d),
      text: Color(0xff2c8e1e),
      hover: hoverGreen);
  static const CardColorModel greenSecondary = CardColorModel(
      card: Color(0xff59b94d),
      shadow: Color(0xff2b8e1e),
      text: Color(0xffb1f8d7),
      hover: hoverGreen);
  static const CardColorModel greenTertiary = CardColorModel(
      card: Color(0xff2c8e1e),
      shadow: Color(0xff175c10),
      text: Color(0xffb1f8d7),
      hover: hoverGreen);

  // 7. Teal
  static const HoverColorModel hoverTeal =
  HoverColorModel(card: Color(0xff138084), shadow: Color(0xff0c5a5d), text: Color(0xffbaf7ff));
  static const CardColorModel tealPastel = CardColorModel(
    card: Color(0xffDAF6FF),
    shadow: Color(0xff83DBE6),
    text: Color(0xff138084),
    hover: hoverTeal,
  );
  static const CardColorModel tealPrimary = CardColorModel(
      card: Color(0xff83dbe6),
      shadow: Color(0xff4db5ba),
      text: Color(0xff138084),
      hover: hoverTeal);
  static const CardColorModel tealSecondary = CardColorModel(
      card: Color(0xff4db5ba),
      shadow: Color(0xff138084),
      text: Color(0xffbaf7ff),
      hover: hoverTeal);
  static const CardColorModel tealTertiary = CardColorModel(
      card: Color(0xff138084),
      shadow: Color(0xff0c5a5d),
      text: Color(0xffbaf7ff),
      hover: hoverTeal);
  static const CardColorModel tealFourth = CardColorModel(
      card: Color(0xff6aeacc),
      shadow: Color(0xff2ca0cb),
      text: Color(0xff2ca0cb),
      hover: hoverBlue);

  // 8. Blue
  static const HoverColorModel hoverBlue =
  HoverColorModel(card: Color(0xff285498), shadow: Color(0xff123976), text: Color(0xffc0d4f5));
  static const CardColorModel bluePastel = CardColorModel(
    card: Color(0xffCCDAF0),
    shadow: Color(0xffA1C0F2),
    text: Color(0xff285498),
    hover: hoverBlue,
  );
  static const CardColorModel bluePrimary = CardColorModel(
      card: Color(0xffa1c0f2),
      shadow: Color(0xff4c77b9),
      text: Color(0xff285498),
      hover: hoverBlue);
  static const CardColorModel blueSecondary = CardColorModel(
      card: Color(0xff4c77b9),
      shadow: Color(0xff285498),
      text: Color(0xffc0d4f5),
      hover: hoverBlue);
  static const CardColorModel blueShadowBlue = CardColorModel(
      card: Color(0xffA2F4F1),
      shadow: Color(0xff4D77B9),
      text: Color(0xff285499),
      hover: hoverBlue);
  static const CardColorModel blueTertiary = CardColorModel(
      card: Color(0xff285498),
      shadow: Color(0xff123976),
      text: Color(0xffc0d4f5),
      hover: hoverBlue);

  // 9. Purple
  static const HoverColorModel hoverPurple =
  HoverColorModel(card: Color(0xff562095), shadow: Color(0xff320665), text: Color(0xffd4c3f5));
  static const CardColorModel purplePastel = CardColorModel(
    card: Color(0xffE3D4FF),
    shadow: Color(0xffBEA1F4),
    text: Color(0xff562095),
    hover: hoverPurple,
  );
  static const CardColorModel purplePrimary = CardColorModel(
      card: Color(0xffbea1f4),
      shadow: Color(0xff7f4db9),
      text: Color(0xff562095),
      hover: hoverPurple);
  static const CardColorModel purpleSecondary = CardColorModel(
      card: Color(0xff7f47a7),
      shadow: Color(0xff562095),
      text: Color(0xffd4c3f5),
      hover: hoverPurple);
  static const CardColorModel purpleSecondaryTutor = CardColorModel(
      card: Color(0xFF7F4DB9),
      shadow: Color(0xFF562095),
      text: Color(0xFFD4C3F5),
      hover: hoverPurple);
  static const CardColorModel tutorSubmitSecond = CardColorModel(
      card: Color(0xFFD4C3F5),
      shadow: Color(0xFF7F4DB9),
      text: Color(0xFF7F4DB9),
      hover: hoverPurple);
  static const CardColorModel purpleTertiary = CardColorModel(
      card: Color(0xff562095),
      shadow: Color(0xff320665),
      text: Color(0xffd4c3f5),
      hover: hoverPurple);
  static const CardColorModel purpleDark = CardColorModel(
      card: Color(0xff7f4db9),
      shadow: Color(0xFF5C0758),
      text: Color(0xffd4c3f5),
      hover: hoverPurple);

  // 10. Magenta
  static const HoverColorModel hoverMagenta =
  HoverColorModel(card: Color(0xff8b0a86), shadow: Color(0xff5c0858), text: Color(0xfff3c3f7));
  static const CardColorModel magentaPastel = CardColorModel(
    card: Color(0xffF6D5F9),
    shadow: Color(0xffEEA1F4),
    text: Color(0xff8B0A86),
    hover: hoverMagenta,
  );
  static const CardColorModel magentaPrimary = CardColorModel(
      card: Color(0xffeea1f4),
      shadow: Color(0xffb94db5),
      text: Color(0xff8b0a86),
      hover: hoverMagenta);
  static const CardColorModel magentaSecondary = CardColorModel(
      card: Color(0xffb94db5),
      shadow: Color(0xff8b0a86),
      text: Color(0xfff3c3f7),
      hover: hoverMagenta);
  static const CardColorModel magentaTertiary = CardColorModel(
      card: Color(0xff8b0a86),
      shadow: Color(0xff5c0858),
      text: Color(0xfff3c3f7),
      hover: hoverMagenta);

  // 11. Pink
  static const HoverColorModel hoverPink =
  HoverColorModel(card: Color(0xff90105e), shadow: Color(0xff670843), text: Color(0xfff4b2db));
  static const CardColorModel pinkPastel = CardColorModel(
    card: Color(0xffFFD7F0),
    shadow: Color(0xffF4A1D4),
    text: Color(0xff90105E),
    hover: hoverPink,
  );
  static const CardColorModel pinkPrimary = CardColorModel(
      card: Color(0xfff4a1d4),
      shadow: Color(0xffb94db5),
      text: Color(0xff90105e),
      hover: hoverPink);
  static const CardColorModel pinkSecondary = CardColorModel(
      card: Color(0xffb94d8f),
      shadow: Color(0xff90105e),
      text: Color(0xfff4b2db),
      hover: hoverPink);
  static const CardColorModel pinkTertiary = CardColorModel(
      card: Color(0xff90105e),
      shadow: Color(0xff670843),
      text: Color(0xfff4b2db),
      hover: hoverPink);
  static const CardColorModel pinkBlue = CardColorModel(
      card: Color(0xfff4a1d5),
      shadow: Color(0xff4d77b9),
      text: Color(0xff285499),
      hover: hoverPink);
  static const CardColorModel pinkBonus = CardColorModel(
      card: Color(0xffeea1f4),
      shadow: Color(0xffb84db5),
      text: Color(0xffb84db5),
      hover: hoverPink);

  // 12. Gray
  static const HoverColorModel hoverGray =
  HoverColorModel(card: Color(0xff575757), shadow: Color(0xff363636), text: Color(0xffd5d5d5));
  static const CardColorModel grayPastel = CardColorModel(
    card: Color(0xffEAE8E8),
    shadow: Color(0xffCECECE),
    text: Color(0xff575757),
    hover: hoverGray,
  );
  static const CardColorModel grayPrimary = CardColorModel(
      card: Color(0xffcecece),
      shadow: Color(0xff868686),
      text: Color(0xff5a5a5a),
      hover: hoverGray);
  static const CardColorModel graySecondary = CardColorModel(
      card: Color(0xff8d8d8d),
      shadow: Color(0xff575757),
      text: Color(0xffd5d5d5),
      hover: hoverGray);
  static const CardColorModel grayTertiary = CardColorModel(
      card: Color(0xff575757),
      shadow: Color(0xff363636),
      text: Color(0xffd5d5d5),
      hover: hoverGray);
  static const CardColorModel grayDisabled = CardColorModel(
    card: Color(0xff8D8D8D),
    shadow: Color(0xff575757),
    text: Color(0xffD5D5D5),
    hover: hoverGray,
  );
  static const CardColorModel coklatModel = CardColorModel(
      card: Color(0xFFE6A882),
      shadow: Color(0xFFB9724C),
      text: Color(0xFF9C4A1D),
      hover: hoverGray);


  static const listPrimary = [
    redPrimary,
    orangePrimary,
    yellowPrimary,
    limePrimary,
    lightGreenPrimary,
    greenPrimary,
    tealPrimary,
    bluePrimary,
    purplePrimary,
    magentaPrimary,
    pinkPrimary,
  ];
  static const listSecondary = [
    redSecondary,
    orangeSecondary,
    yellowSecondary,
    limeSecondary,
    lightGreenSecondary,
    greenSecondary,
    tealSecondary,
    blueSecondary,
    purpleSecondary,
    magentaSecondary,
    pinkSecondary,
  ];

  static const listCollection = [
    orangePrimary,
    tealPrimary,
    bluePrimary,
    purplePrimary,
    pinkPrimary,
    magentaPrimary,
  ];

  static const listOrdering = [
    yellowPrimary,
    limePrimary,
    lightGreenPrimary,
    greenPrimary,
    tealPrimary,
    bluePrimary,
    purplePrimary,
    pinkPrimary,
    magentaPrimary,
    grayPrimary,
  ];

  static CardColorModel getRandomCollectionColor() {
    final random = Random();
    return listCollection[random.nextInt(listCollection.length)];
  }

  static CardColorModel getRandomPrimaryColor() {
    final random = Random();
    return listPrimary[random.nextInt(listPrimary.length)];
  }

  static CardColorModel getRandomSecondaryColor() {
    final random = Random();
    return listSecondary[random.nextInt(listSecondary.length)];
  }

  // Button Delete Video
  static const HoverColorModel hoverDeleteVideo =
  HoverColorModel(card: Color(0xffC63C51), shadow: Color(0xff8C3061), text: Color(0xffD95F59));
  static const CardColorModel deteleVideoPrimary = CardColorModel(
      card: Color(0xffff67a1),
      shadow: Color(0xffFF5580),
      text: Color(0xffffffff),
      hover: hoverDeleteVideo);
  static const CardColorModel deleteVideoSecondary = CardColorModel(
      card: Color(0xffFF8A8A),
      shadow: Color(0xffF4DEB3),
      text: Color(0xffDAD4B5),
      hover: hoverDeleteVideo);

  // Button White
  static const HoverColorModel hoverWhite =
  HoverColorModel(card: Color(0xffE4E0E1), shadow: Color(0xffD6C0B3), text: Color(0xffF5F5F7));
  static const CardColorModel whitePrimary = CardColorModel(
      card: Color(0xffffffff),
      shadow: Color(0xffE4E0E1),
      text: Color(0xff000000),
      hover: hoverWhite);
  static const CardColorModel whiteSecondary = CardColorModel(
      card: Color(0xffF5F5F5),
      shadow: Color(0xff507687),
      text: Color(0xffFCFAEE),
      hover: hoverWhite);

  // Button delete remove collection
  static const HoverColorModel hoverRemoveCollection =
  HoverColorModel(card: Color(0xff90105e), shadow: Color(0xff670843), text: Color(0xfff4b2db));
  static const CardColorModel removeCollectionPrimary = CardColorModel(
      card: Color(0xffff67a1),
      shadow: Color(0xffFF4191),
      text: Color(0xffffe1ec),
      hover: hoverRemoveCollection);
  static const CardColorModel removeCollectionSecondary = CardColorModel(
      card: Color(0xffb94d8f),
      shadow: Color(0xff90105e),
      text: Color(0xfff4b2db),
      hover: hoverRemoveCollection);

  // Button search
  static const HoverColorModel hoverSearcButton =
  HoverColorModel(card: Color(0xff2E073F), shadow: Color(0xff3A1078), text: Color(0xff7A1CAC));
  static const CardColorModel buttonSearchPrimary = CardColorModel(
      card: Color(0xff3f008a),
      shadow: Color(0xff6C48C5),
      text: Color(0xffbbcfef),
      hover: hoverSearcButton);
  static const CardColorModel buttonSearchSecondary = CardColorModel(
      card: Color(0xff180161),
      shadow: Color(0xff4F1787),
      text: Color(0xffffdfd6),
      hover: hoverSearcButton);

  // Button Quick help
  static const HoverColorModel hoverQuickHelp =
  HoverColorModel(card: Color(0xff00FF9C), shadow: Color(0xffB6FFA1), text: Color(0xffE9EED9));
  static const CardColorModel buttonQuickHelpPrimary = CardColorModel(
      card: Color(0xff4affce),
      shadow: Color(0xff000000),
      text: Color(0xff2d2d2d),
      hover: hoverQuickHelp);
  static const CardColorModel buttonQuickHelpSecondary = CardColorModel(
      card: Color(0xff73EC8B),
      shadow: Color(0xff54C392),
      text: Color(0xffFFFBE6),
      hover: hoverQuickHelp);

  // Button send Rating card
  static const HoverColorModel hoverSendRating =
  HoverColorModel(card: Color(0xffF0A8D0), shadow: Color(0xffFFC6C6), text: Color(0xffFFEBD4));
  static const CardColorModel buttonSendRatingPrimary = CardColorModel(
      card: Color(0xffff9ff0),
      shadow: Color(0xff000000),
      text: Color(0xff2d2d2d),
      hover: hoverSendRating);
  static const CardColorModel buttonSendRatingSecondary = CardColorModel(
      card: Color(0xffFFE6E6),
      shadow: Color(0xffE1AFD1),
      text: Color(0xffFFF3C7),
      hover: hoverSendRating);

  // Button cancel logout
  static const HoverColorModel hoverCancel =
  HoverColorModel(card: Color(0xffF7B5CA), shadow: Color(0xffFFC6C6), text: Color(0xffC75B7A));
  static const CardColorModel buttonCancelPrimary = CardColorModel(
      card: Color(0xffffd1e3),
      shadow: Color(0xffFFC7ED),
      text: Color(0xffff67a1),
      hover: hoverCancel);
  static const CardColorModel buttonCancelSecondary = CardColorModel(
      card: Color(0xffF0EBE3),
      shadow: Color(0xffF3D0D7),
      text: Color(0xff304463),
      hover: hoverCancel);

  // Button search
  static const HoverColorModel hoverSearcButtonFlashcard = HoverColorModel(
    card: Color(0xFF6A248F),
    shadow: Color(0xFF8144B6),
    text: Color(0xFFFFFFFF),
  );

  static const CardColorModel buttonSearchFlashcardPrimary = CardColorModel(
      card: Color(0xffFF9FF0),
      shadow: Color(0xFF431E6A),
      text: Color(0xff2b2b2b),
      hover: hoverSearcButtonFlashcard);
  static const CardColorModel buttonSearchFlashcardSecondary = CardColorModel(
    card: Color(0xFFFFC4F8),
    shadow: Color(0xFF2F1246),
    text: Color(0xFF2B2B2B),
    hover: hoverSearcButtonFlashcard,
  );

  static const HoverColorModel hoverQuickHelpOflline = HoverColorModel(
    card: Color(0xfffff176),
    shadow: Color(0xffffd54f),
    text: Color(0xff000000),
  );

  static const CardColorModel buttonQuickHelpPrimaryOffline = CardColorModel(
    card: Color(0xffffeb3b),
    shadow: Color(0xff000000),
    text: Color(0xff000000),
    hover: hoverQuickHelpOflline,
  );

  // Button previous
  static const HoverColorModel hoverButtonPrevious =
  HoverColorModel(card: Color(0xff4A628A), shadow: Color(0xffFBFBFB), text: Color(0xffC6E7FF));
  static const CardColorModel buttonPreviousPrimary = CardColorModel(
      card: Color(0xff63009c),
      shadow: Color(0xff003161),
      text: Color(0xfffff5fe),
      hover: hoverButtonPrevious);
  static const CardColorModel buttonPreviousSecondary = CardColorModel(
      card: Color(0xff133E87),
      shadow: Color(0xff608BC1),
      text: Color(0xffF3F3E0),
      hover: hoverButtonPrevious);

  // button save profile
  static const HoverColorModel hoverSaveProfile =
  HoverColorModel(card: Color(0xffC6E7FF), shadow: Color(0xffD4F6FF), text: Color(0xffFBFBFB));
  static const CardColorModel buttonSaveProfilePrimary = CardColorModel(
      card: Color(0xff537dbd),
      shadow: Color(0xff40598d),
      text: Color(0xfff3f7fb),
      hover: hoverSaveProfile);
  static const CardColorModel buttonSaveProfileSecondary = CardColorModel(
      card: Color(0xff7695FF),
      shadow: Color(0xff9DBDFF),
      text: Color(0xffF5F5F5),
      hover: hoverSaveProfile);

// CardColorModel Collection Videos (Darker Version)
  static const HoverColorModel hoverClVideoPink = HoverColorModel(
    card: Color(0xffa2455b),
    shadow: Color(0xff8c3a4d),
    text: Color(0xffffffff),
  );
  static const HoverColorModel hoverClVideoOrange = HoverColorModel(
    card: Color(0xffb2573a),
    shadow: Color(0xff9a4931),
    text: Color(0xffffffff),
  );
  static const HoverColorModel hoverClVideoYellow = HoverColorModel(
    card: Color(0xffa38544),
    shadow: Color(0xff8e743a),
    text: Color(0xff595d64),
  );
  static const HoverColorModel hoverClVideoGreen = HoverColorModel(
    card: Color(0xff6f9f4e),
    shadow: Color(0xff5e7e3e),
    text: Color(0xff434b56),
  );
  static const HoverColorModel hoverClVideoTeal = HoverColorModel(
    card: Color(0xff4d7d6e),
    shadow: Color(0xff3e6454),
    text: Color(0xff3d4957),
  );
  static const HoverColorModel hoverClVideoBlue = HoverColorModel(
    card: Color(0xff5c5d99),
    shadow: Color(0xff45477c),
    text: Color(0xffffffff),
  );

  static const CardColorModel clVideoBluePrimary = CardColorModel(
    card: Color(0xffa8a9ea),
    shadow: Color(0xff7f80c4),
    text: Color(0xffffffff),
    hover: hoverClVideoBlue,
  );
  static const CardColorModel clVideoBlueSecondary = CardColorModel(
    card: Color(0xff7f80c4),
    shadow: Color(0xff5a5f9e),
    text: Color(0xffffffff),
    hover: hoverClVideoBlue,
  );
  static const CardColorModel clVideoTealPrimary = CardColorModel(
    card: Color(0xff86dacb),
    shadow: Color(0xff64a58a),
    text: Color(0xff3d4957),
    hover: hoverClVideoTeal,
  );
  static const CardColorModel clVideoTealSecondary = CardColorModel(
    card: Color(0xff64a58a),
    shadow: Color(0xff4e7e64),
    text: Color(0xff3d4957),
    hover: hoverClVideoTeal,
  );
  static const CardColorModel clVideoGreenPrimary = CardColorModel(
    card: Color(0xffacda78),
    shadow: Color(0xff8ccf62),
    text: Color(0xff434b56),
    hover: hoverClVideoGreen,
  );
  static const CardColorModel clVideoGreenSecondary = CardColorModel(
    card: Color(0xff8ccf62),
    shadow: Color(0xff7a9e4c),
    text: Color(0xff434b56),
    hover: hoverClVideoGreen,
  );
  static const CardColorModel clVideoYellowPrimary = CardColorModel(
    card: Color(0xfff9cd6c),
    shadow: Color(0xffcfa855),
    text: Color(0xff595d64),
    hover: hoverClVideoYellow,
  );
  static const CardColorModel clVideoYellowSecondary = CardColorModel(
    card: Color(0xffcfa855),
    shadow: Color(0xffb08d46),
    text: Color(0xff595d64),
    hover: hoverClVideoYellow,
  );
  static const CardColorModel clVideoOrangePrimary = CardColorModel(
    card: Color(0xfff28d71),
    shadow: Color(0xffe16e4b),
    text: Color(0xffffffff),
    hover: hoverClVideoOrange,
  );
  static const CardColorModel clVideoOrangeSecondary = CardColorModel(
    card: Color(0xffe16e4b),
    shadow: Color(0xffc95d42),
    text: Color(0xffffffff),
    hover: hoverClVideoOrange,
  );
  static const CardColorModel clVideoPinkPrimary = CardColorModel(
    card: Color(0xfffb6884),
    shadow: Color(0xffd35b73),
    text: Color(0xffffffff),
    hover: hoverClVideoPink,
  );
  static const CardColorModel clVideoPinkSecondary = CardColorModel(
    card: Color(0xffd35b73),
    shadow: Color(0xffb74b61),
    text: Color(0xffffffff),
    hover: hoverClVideoPink,
  );

  static const CardColorModel tutorOrange = CardColorModel(
    card: Color(0xffFEDF89),
    shadow: Color(0xffFEC84B),
    text: Color(0xffDC6803),
    hover: hoverOrange,
  );
  static const CardColorModel tutorBgPurple = CardColorModel(
    card: Color(0xffF4EEFF),
    shadow: Color(0xffE3D4FF),
    text: Color(0xff7F4DB9),
    hover: hoverGray,
  );
  static const CardColorModel tutorBgRed = CardColorModel(
    card: Color(0xffFFE1E1),
    shadow: Color(0xffFDA2A2),
    text: Color(0xffB94C4C),
    hover: hoverRed,
  );
  static const CardColorModel tutorBgBlue = CardColorModel(
    card: Color(0xffDFEBFF),
    shadow: Color(0xffCCDAF0),
    text: Color(0xff4C77B9),
    hover: hoverBlue,
  );

  static const CardColorModel tutorPinkInactive = CardColorModel(
    card: Color(0xffF4EEFF),
    shadow: Color(0xffF4A1D4),
    text: Color(0xffB94D8F),
    hover: hoverPink,
  );

  static const CardColorModel tutorBlueInactive = CardColorModel(
    card: Color(0xffECF3FF),
    shadow: Color(0xffAFC7EC),
    text: Color(0xff4C77B9), // warna utama dari active
    hover: hoverBlue,
  );

  static const CardColorModel tutorLightGreenInactive = CardColorModel(
    card: Color(0xffF2FFE9),
    shadow: Color(0xffC7EBAB),
    text: Color(0xffADE683),
    hover: hoverLightGreen,
  );

  static const CardColorModel tutorMagentaInactive = CardColorModel(
    card: Color(0xffFCEBFF),
    shadow: Color(0xffE4B8E7),
    text: Color(0xffEEA1F4),
    hover: hoverMagenta,
  );
  static const CardColorModel tutorRedInactive = CardColorModel(
    card: Color(0xffFFEDED),
    shadow: Color(0xffE7B5B5),
    text: Color(0xffB94C4C),
    hover: hoverRed,
  );
  static const CardColorModel tutorOrangeInactive = CardColorModel(
    card: Color(0xffFFF2E9),
    shadow: Color(0xffEBC4A9),
    text: Color(0xffB9724D),
    hover: hoverOrange,
  );
  static const CardColorModel tutorYellowInactive = CardColorModel(
    card: Color(0xffFFFBE8),
    shadow: Color(0xffE6DBA1),
    text: Color(0xffB9AD4E),
    hover: hoverYellow,
  );
  static const CardColorModel tutorTealInactive = CardColorModel(
    card: Color(0xffE9FCFC),
    shadow: Color(0xffAFE1E2),
    text: Color(0xff4DB5BA),
    hover: hoverTeal,
  );


  static const CardColorModel tutorRatingNormal = CardColorModel(
    card: Color(0xffF4EEFF),
    shadow: Color(0xff575757),
    text: Color(0xff575757),
    hover: hoverPurple,
  );

  static const CardColorModel tutorRatingUp = CardColorModel(
    card: Color(0xffD6F5C0),
    shadow: Color(0xff60951A),
    text: Color(0xff60951A),
    hover: hoverPurple,
  );

  static const CardColorModel tutorRatingDown = CardColorModel(
    card: Color(0xffFFE1E1),
    shadow: Color(0xff831313),
    text: Color(0xffB94C4C),
    hover: hoverPurple,
  );

  static const CardColorModel tutorBackPurple = CardColorModel(
    card: Color(0xffE3D4FF),
    shadow: Color(0xffBEA1F4),
    text: Color(0xff7F4DB9),
    hover: hoverPurple,
  );

  static const CardColorModel tutorBackRed = CardColorModel(
    card: Color(0xffF4EEFF),
    shadow: Color(0xffE68383),
    text: Color(0xffE68383),
    hover: hoverRed,
  );

  static const CardColorModel tutorReviewApproved = CardColorModel(
    card: Color(0xffD6F5C0),
    shadow: Color(0xff8CB94D),
    text: Color(0xff8CB94D),
    hover: hoverLightGreen,
  );
  static const CardColorModel tutorReviewCompleted = CardColorModel(
    card: Color(0xffCCDAF0),
    shadow: Color(0xff4C77B9),
    text: Color(0xff4C77B9),
    hover: hoverBlue,
  );
  static const CardColorModel tutorReviewUnderReview = CardColorModel(
    card: Color(0xffFEDF89),
    shadow: Color(0xffDC6803),
    text: Color(0xffDC6803),
    hover: hoverOrange,
  );
  static const CardColorModel tutorReviewUncompleted = CardColorModel(
    card: Color(0xffEAE8E8),
    shadow: Color(0xff8D8D8D),
    text: Color(0xff8D8D8D),
    hover: hoverOrange,
  );
  static const CardColorModel tutorReviewRejected = CardColorModel(
    card: Color(0xffFDA2A2),
    shadow: Color(0xffB94C4C),
    text: Color(0xffB94C4C),
    hover: hoverOrange,
  );
  static const CardColorModel tutorPurpleHeader = CardColorModel(
    card: Color(0xffD4C3F5),
    shadow: Color(0xffBEA1F4),
    text: Color(0xff7F4DB9),
    hover: hoverPurple,
  );
  static const CardColorModel quickStatsBlue = CardColorModel(
    card: Color(0xffCCDAF0),
    shadow: Color(0xffA1C0F2),
    text: Color(0xff4C77B9),
    hover: hoverBlue,
  );
  static const CardColorModel weeklyOverview = CardColorModel(
    card: Color(0xffFFD7F0),
    shadow: Color(0xffF4A1D4),
    text: Color(0xffB94DB5),
    hover: hoverPurple,
  );


  static const CardColorModel sessionCardOnGoing = CardColorModel(
    card: Color(0xffEEA1F4),
    shadow: Color(0xff8B0A86),
    text: Color(0xff8B0A86),
    hover: hoverPurple,
  );
  static const CardColorModel sessionCardCompleted = CardColorModel(
    card: Color(0xffB7F6FE),
    shadow: Color(0xff83DBE6),
    text: Color(0xff4DB5BA),
    hover: hoverTeal,
  );
  static final CardColorModel sessionCardCanceled = CardColorModel(
    card: Color(0xffD5D5D5).withValues(alpha: 0.6),
    shadow: Color(0xff8D8D8D).withValues(alpha: 0.6),
    text: Color(0xff8D8D8D).withValues(alpha: 0.6),
    hover: hoverGray,
  );
  static const CardColorModel sessionCardUpcoming = CardColorModel(
    card: Color(0xffC0D4F5),
    shadow: Color(0xffA1C0F2),
    text: Color(0xff4C77B9),
    hover: hoverBlue,
  );
  static const CardColorModel sessionCardRescheduled = CardColorModel(
    card: Color(0xffF0E9B6),
    shadow: Color(0xffE6CB83),
    text: Color(0xffB9AD4E),
    hover: hoverYellow,
  );

  static const CardColorModel sessionCardOnGoingBadge = CardColorModel(
    card: Color(0xffB1F8D7),
    shadow: Color(0xff59B94D),
    text: Color(0xff2C8E1E),
    hover: hoverGreen,
  );
  static const CardColorModel sessionCardCompletedBadge = CardColorModel(
    card: Color(0xffCCF2AF),
    shadow: Color(0xfF60951A),
    text: Color(0xff60951A),
    hover: hoverLightGreen,
  );
  static final CardColorModel sessionCardCanceledBadge = CardColorModel(
    card: const Color(0xffEAB4B4).withValues(alpha: 0.6),
    shadow: const Color(0xffB94C4C).withValues(alpha: 0.6),
    text: const Color(0xffB94C4C).withValues(alpha: 0.6),
    hover: hoverRed,
  );
  static const CardColorModel sessionCardUpcomingBadge = CardColorModel(
    card: Color(0xffF0EEA8),
    shadow: Color(0xff928214),
    text: Color(0xff938E14),
    hover: hoverYellow,
  );
  static const CardColorModel sessionCardRescheduledBadge = CardColorModel(
    card: Color(0xffC0D4F5),
    shadow: Color(0xff285498),
    text: Color(0xff285498),
    hover: hoverBlue,
  );

  static List<CardColorModel> getRandomUniquePrimaryColors(int count) {
    // Batasi count agar tidak melebihi jumlah warna yang tersedia
    final maxCount = listPrimary.length;
    final actualCount = count > maxCount ? maxCount : count;

    // Buat salinan dari list yang ada agar bisa dimodifikasi tanpa mengubah list asli
    final List<CardColorModel> availableColors = List.from(listPrimary);
    final List<CardColorModel> result = [];
    final random = Random();

    // Ambil warna secara acak tanpa pengulangan
    for (int i = 0; i < actualCount; i++) {
      // Pilih indeks acak dari warna yang masih tersedia
      final randomIndex = random.nextInt(availableColors.length);
      // Tambahkan warna tersebut ke hasil
      result.add(availableColors[randomIndex]);
      // Hapus warna tersebut dari daftar yang tersedia
      availableColors.removeAt(randomIndex);
    }

    return result;
  }

  static const HoverColorModel hoverTransparent = HoverColorModel(
      card: Colors.transparent, shadow: Colors.transparent, text: Colors.transparent);

  static const CardColorModel transparent = CardColorModel(
      card: Colors.transparent,
      shadow: Colors.transparent,
      text: Colors.transparent,
      hover: hoverTransparent);

  static const CardColorModel lightBlue = CardColorModel(
      card: Color(0xffd6e6ff),
      shadow: Color(0xff4d77b9),
      text: Color(0xff285498),
      hover: hoverBlue);

  static List<GroupModelColor> getUniqueRandomItems<GroupModelColor>(
      {required List<GroupModelColor> sourceList, required int length}) {
    // Menyiapkan generator random
    Random random = Random();

    // Membuat salinan dari list yang ada untuk diacak
    List<GroupModelColor> shuffledList = List.from(sourceList);

    // Mengacak list
    shuffledList.shuffle(random);

    // Membuat list hasil tanpa duplikasi langsung
    List<GroupModelColor> result = [];

    // Jika panjang list yang diminta lebih besar dari list yang ada, ulangi proses
    while (result.length < length) {
      for (var item in shuffledList) {
        if (result.isEmpty || result.last != item) {
          // Pastikan item terakhir tidak duplikat
          result.add(item);
        }
        if (result.length == length) break; // Hentikan loop ketika cukup panjang
      }

      // Jika list belum cukup panjang, ulangi shuffle
      if (result.length < length) {
        shuffledList.shuffle(random); // Acak ulang
      }
    }

    return result;
  }
}
