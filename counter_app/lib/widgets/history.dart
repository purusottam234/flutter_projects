import 'package:flutter/cupertino.dart';

class HistoryWidget extends StatefulWidget {
  final List<int> increasesHistory;

  const HistoryWidget({Key? key, required this.increasesHistory})
      : super(key: key);

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  late ListView list = buildList();
  ListView buildList(){
    return ListView.separated(....);

  }
  @override
  void @override
  void didUpdateWidget (covariant HistoryWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.increasesHistory.length!=oldWidget.increasesHistory.length){
      list = buildList();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Increases counter"),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 15,
            ),
            child: SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: widget.increasesHistory.length,
                separatorBuilder: (_, __) {
                  return const SizedBox(width: 10);
                },
                itemBuilder: (_, index) {
                  return Text("${widget.increasesHistory[index]}");
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
