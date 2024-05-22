import '../../../../../Utils/constants/exports.dart';

class HelpChipRow extends StatelessWidget {
  const HelpChipRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Expanded(
                child: GeneralChoiceChip(
                    chipTitle: "FAQ", backgroundColor: MColors.yellowishColor)),
            6.widthBox,
            const Expanded(child: GeneralChoiceChip(chipTitle: "Contact Us")),
          ],
        ),
        12.heightBox,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Expanded(child: GeneralChoiceChip(chipTitle: "General")),
            6.widthBox,
            const Expanded(
                child: GeneralChoiceChip(
                    chipTitle: "Account",
                    backgroundColor: MColors.yellowishColor)),
            6.widthBox,
            const Expanded(child: GeneralChoiceChip(chipTitle: "Services")),
          ],
        ),
      ],
    );
  }
}
