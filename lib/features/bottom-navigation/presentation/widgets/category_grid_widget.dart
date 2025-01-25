import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/category_item_card_widget.dart';
class CategoryGrid extends StatelessWidget {
  final double? maxCrossAxisExtent;
  final Widget? item;
  const CategoryGrid({
    super.key, this.maxCrossAxisExtent, this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        ///==================== category icon ======================///
        return item?? CategoryItemCard();
      },
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:maxCrossAxisExtent?? 110.w,
          mainAxisSpacing: 8.w,
          crossAxisSpacing: 8.w),
    );
  }
}