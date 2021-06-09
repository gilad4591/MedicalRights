class FontS {
  double fontS = 16;
  double fontHeader = 24;
  double bodyTextSize = 20;

  increaseTextSize() {
    if (fontS < 24) {
      fontS += 2;
      fontHeader += 2;
    }
  }

  decreaseTextSize() {
    if (fontS > 16) {
      fontS -= 2;
      fontHeader -= 2;
    }
  }
}
