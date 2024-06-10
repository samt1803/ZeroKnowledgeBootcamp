pragma circom 2.1.4;

template IsZero() {
  signal input a;
  signal output isZero;
  var t;

  if (a == 0) {
    t = 1;
  } else {
    t = 0;
  }
  isZero <-- t;
  assert (a == 0);
}

component main { public [ a ] } = IsZero();

/* INPUT = {
    "a": "0"
} */
