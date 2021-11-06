import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_button/menu_button.dart';

class CustomMenuButton extends StatefulWidget {
  CustomMenuButton({
    @required this.onItemSelected,
    @required this.items,
    @required this.selectedItem,
  });
  ValueChanged<String> onItemSelected;
  String selectedItem;
  List<String> items;

  @override
  _CustomMenuButtonState createState() => _CustomMenuButtonState();
}

class _CustomMenuButtonState extends State<CustomMenuButton> {
  @override
  Widget build(BuildContext context) {
    return MenuButton<String>(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                  child: Text(widget.selectedItem,
                      overflow: TextOverflow.ellipsis)),
              const SizedBox(
                width: 25,
                height: 25,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      items: widget.items,
      itemBuilder: (String value) => Container(
        height: 50,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 16,
        ),
        child: Text(value),
      ),
      toggledChild: Container(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 25,
                  height: 25,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onItemSelected: widget.onItemSelected,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(3.0),
        ),
      ),
      divider: Container(
        height: 1,
        color: Colors.grey,
      ),
      onMenuButtonToggle: (bool isToggle) {},
    );
  }
}
