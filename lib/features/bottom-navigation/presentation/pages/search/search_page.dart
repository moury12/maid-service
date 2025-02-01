import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_text_button.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/helpers/helper_function.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/filter_of_search_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/premium_mermaids_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/maid_details_content_widget.dart';

class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> sortOptions = [
    "Top Rated",
    "Price: Low to High",
    "Price: High to Low"
  ];

  Future<BitmapDescriptor> getCustomMarker() async {
    return await  BitmapDescriptor.asset(

        ImageConfiguration(size: Size(100, 100)),
        'assets/icon/location_of_user.png'
    );
  }

  Set<Marker> _markers = const <Marker>{};

  void _addCustomMarkers() async {
    final BitmapDescriptor userMarkerIcon = await getCustomMarker();

    _markers.add(
      Marker(
        markerId: MarkerId(
          '1',
        ),
        icon: userMarkerIcon,
        position: LatLng(23.45, 91.19),
        infoWindow: InfoWindow(
          title: 'comilla',
        ),
      ),
    );_markers.add(
      Marker(
        markerId: MarkerId(
          '1',
        ),
        icon: userMarkerIcon,
        position: LatLng(22.82, 89.55),
        infoWindow: InfoWindow(
          title: 'khulna',
        ),
      ),
    );_markers.add(
      Marker(
        markerId: MarkerId(
          '1',
        ),

        position: LatLng(23, 90),
        infoWindow: InfoWindow(
          title: 'Dhaka',
        ),
      ),
    );_markers.add(
      Marker(
        markerId: MarkerId(
          '1',
        ),
        icon: userMarkerIcon,
        position: LatLng(22.80, 90.50),

        infoWindow: InfoWindow(
          title: 'Barisal',
        ),
      ),
    );


  }
@override
  void initState() {
    _addCustomMarkers();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding16,
      child: Column(
        spacing: 12.h,
        children: [
          Row(
            spacing: 8.w,
            children: [
              FilterButtonContainer(
                function: () {
                  HelperFunction.customDialogWidget(context,
                      title: AppStaticString.filterBy,
                      trailing: CustomTextButton(
                        text: AppStaticString.reset,
                        onPressed: () {},
                      ),
                      child: FilterOfSearchWidget(),
                      button: SizedBox.shrink());
                },
                title: AppStaticString.filter,
              ),
              /*FilterButtonContainer(
                function: () {


                },
                title: AppStaticString.sort,
                icon: sortIcon,
              ),*/
              PopupMenuButton<String>(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FilterButtonContainer(
                  title: AppStaticString.sort,
                  icon: sortIcon,
                ),
                onSelected: (value) {},
                itemBuilder: (BuildContext context) {
                  return sortOptions.map((String option) {
                    return PopupMenuItem<String>(
                      value: option,
                      child: CustomText(text: option, style: poppinsMedium),
                    );
                  }).toList();
                },
              )
            ],
          ),
          SizedBox(
            height: 200.h,
            width: double.infinity,
            child: CustomContainerWithBorder(
                padding: EdgeInsets.zero,
                child: GoogleMap(
                  scrollGesturesEnabled: true,
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: true,
                  initialCameraPosition: CameraPosition(
                    bearing: 192.8334901395799,
                    target: LatLng(23, 90),
                    zoom: 7,

                    /* tilt: 59.440717697143555,
                zoom: 19.151926040649414*/
                  ),
                  markers:_markers,
                )),
          ),
          PremiumMermaidsWidget(),
          HomeTitleWidget(
            title: AppStaticString.recentView,
            viewAll: false,
          ),
          ...List.generate(
            10,
            (index) => CustomContainerWithBorder(
                borderColor: AppColors.kGreyBorderColor,
                child: MaidCardWidget()),
          )
        ],
      ),
    );
  }
}
