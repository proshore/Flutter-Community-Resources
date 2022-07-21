import 'package:generic_api_models/models/common_data.dart';
import 'package:generic_api_models/models/common_list_response.dart';
import 'package:generic_api_models/models/common_single_response.dart';

/// For single data
const singleData = {
  "statusCode": 200,
  "message": "Success",
  "data": {"name": "Rajendra", "id": 1}
};

/// This is how we get generic data in the apiData
CommonSingleApiResponse<Data> genericData = CommonSingleApiResponse.fromJson(
  singleData,
  (json) => Data.fromJson(json),
);

var apiData = genericData.data as Data;



/// For list data in the data section

const listData = {
  "statusCode": 200,
  "message": "Success",
  "data": [
    {"name": "Rajendra", "id": 1},
    {"name": "Praveen", "id": 2}
  ]
};

/// This is how we get list of generic data in the apiData
CommonListApiResponse<Data> genericListData = CommonListApiResponse.fromJson(
  listData,
      (json) => Data.fromJson(json),
);

var apiListData = genericListData.data as List<Data>;




