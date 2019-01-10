function word(w) {
  if (w === '' || w === null) {
    return 'you';
  }
  return w;
}

export const twoFer = w => `One for ${word(w)}, one for me.`;
