import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';

class RecordView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RecordViewState();
}

class _RecordViewState extends State<RecordView> {
  final _myRecorder = FlutterSoundRecorder();
  bool _audioSessionOpen = false;
  bool _isRecording = false;
  String _filePath;
  final _myPlayer = FlutterSoundPlayer();

  @override
  void initState() {
    super.initState();

    Future.wait([_myRecorder.openAudioSession(), _myPlayer.openAudioSession()])
        .then((value) {
      setState(() => _audioSessionOpen = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _audioSessionOpen
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: IconButton(
                          icon: Icon(_isRecording ? Icons.stop : Icons.mic),
                          iconSize: 100,
                          color: Colors.white,
                          onPressed: () {
                            if (_isRecording) {
                              _stopRecording();
                            } else {
                              _startRecording();
                            }
                            print('record');
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: IconButton(
                          icon: Icon(Icons.play_arrow),
                          iconSize: 75,
                          color: Colors.white,
                          onPressed: _playFile,
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }

  void _startRecording() async {
    final directory = await getTemporaryDirectory();
    _filePath = '${directory.path}/${DateTime.now()}.aac';
    setState(() => _isRecording = true);
    await _myRecorder.startRecorder(toFile: _filePath, codec: Codec.aacADTS);
    print('after recording start');
  }

  void _stopRecording() async {
    setState(() => _isRecording = false);
    await _myRecorder.stopRecorder();
    print('after stop');
  }

  void _playFile() async {
    await _myPlayer.startPlayer(
        fromURI: _filePath,
        codec: Codec.aacADTS,
        whenFinished: () => setState(() {}));
    print('after player start');
    setState(() {});
  }

  void _stopPlayer() async {
    await _myPlayer.stopPlayer();
    print('after stop');
  }

  @override
  void dispose() {
    _myRecorder.closeAudioSession();
    super.dispose();
  }
}
