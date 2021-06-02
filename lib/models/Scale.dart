class Scale {
  double _scale = 1.0;
  double minScale = 1.0;
  double maxScale = 2.0;
  double scaleAdjust = 0.2;
  double get scale => _scale;
  set scale(double value) => _update(() {
        if (value <= minScale) {
          value = minScale;
        } else if (value >= maxScale) {
          value = maxScale;
        }
        _scale = value;
      });

  void _update(void Function() action) {
    action();
  }
}
