import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

showErrorSnackBar({required BuildContext context, required String message}) {
  Get.snackbar(
    '',
    '',
    titleText: Padding(
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        width: 90.w,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 75.w,
              child: Text(message,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white, height: 1.5)),
            ),
            GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(Icons.close, color: Colors.white),
            )
          ],
        ),
      ),
    ),
    messageText: Container(),
    snackPosition: SnackPosition.TOP,
    backgroundColor: Theme.of(context).colorScheme.error,
    borderRadius: 8,
    duration: const Duration(seconds: 5),
    isDismissible: true,
    forwardAnimationCurve: Curves.ease,
  );
}
