#!/bin/bash

flutter drive \
--driver=test_driver/integration_test.dart \
--target=integration_test/app_update_test/v1.0_specific/default_data_test.dart \
--use-application-binary=integration_test/app_update_test/v1.0_specific/v1_0.apk \
--keep-app-running

flutter drive \
--driver=test_driver/integration_test.dart \
--target=integration_test/app_update_test/v1.0_to_v1.1_specific/default_data_test.dart \
--use-application-binary=integration_test/app_update_test/v1.0_to_v1.1_specific/v1_1.apk
