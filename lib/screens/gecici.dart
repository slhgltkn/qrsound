import 'package:flutter/material.dart';

/* final recorder = SoundRecorder();

class audio extends StatefulWidget {
  const audio({super.key});

  @override
  State<audio> createState() => _audioState();
}

class _audioState extends State<audio> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 1),
            kayitButon(),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

class kayitButon extends StatefulWidget {
  const kayitButon({super.key});

  @override
  State<kayitButon> createState() => _kayitButonState();
}

class _kayitButonState extends State<kayitButon> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isRecording = recorder.isRecording;
    final icon = isRecording ? Icons.stop : Icons.mic;
    final text = isRecording ? 'Durdur' : 'Kaydet';
    final primary = isRecording ? Colors.red : Colors.white;
    final onPrimary = isRecording ? Colors.white : Colors.black;
    Size size = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () async {
        final isRecording = await recorder.toggleRecording();
        setState(() {});
      },
      child: Container(
        width: size.width * 0.5,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.red,
        ),
        child: Padding(
          padding:
              EdgeInsets.fromLTRB(size.width * 0.05, 0, size.width * 0.05, 0),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
              Spacer(flex: 1),
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}

final pathToSaveAudio = 'audio_example.mp3';

class SoundRecorder {
  FlutterSoundRecorder? _audioRecorder;
  bool _isRecorderInitialised = false;

  bool get isRecording => _audioRecorder?.isRecording ?? false;

  Future init() async {
    _audioRecorder = FlutterSoundRecorder();

    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException('Mikrofon İzni');
    }

    await _audioRecorder!.openAudioSession();
    _isRecorderInitialised = true;
  }

  void dispose() {
    if (!_isRecorderInitialised) return;
    _audioRecorder!.closeAudioSession();
    _audioRecorder = null;
    _isRecorderInitialised = false;
  }

  Future _record() async {
    if (!_isRecorderInitialised) return;
    await _audioRecorder?.startRecorder(toFile: pathToSaveAudio);
  }

  Future _stop() async {
    if (!_isRecorderInitialised) return;
    await _audioRecorder!.stopRecorder();
  }

  Future toggleRecording() async {
    if (_audioRecorder?.isStopped ?? true) {
      await _record();
    } else {
      await _stop();
    }
  }
}
 */