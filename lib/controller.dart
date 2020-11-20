
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

Future<io.File> create_file() async {

  var directory = await getApplicationSupportDirectory();
  String path = directory.path;

  io.File file = new io.File(path+'/'+'cache.txt');

  if(file.existsSync()){

    print('ja esxiste o arquivo de cache');


  }else{

    file.createSync();

  }

  return file;


}
Future<String> read_file() async {

  io.File file = await create_file();

  String file_read = file.readAsStringSync();

  return file_read;


}
void write_in_file(String text) async{

  String text_in_file = await read_file();
  io.File file = await create_file();
  file.writeAsStringSync(text_in_file+text+'\n');

}
void delete_file()async {

  io.File file = await create_file();
  file.deleteSync();

}