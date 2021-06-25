var _ = require('underscore');

function isPalindrome(str) {
  var len = str.length;
  var halfway = Math.floor(str.length / 2);
  
  for (var idx = 0; idx < halfway; idx++) {
    if (str[idx] !== str[len - 1 - idx]) {
      return false;
    }
  }
  return true;
}

console.log(isPalindrome('cattac'));
console.log(isPalindrome('catac'));
console.log(isPalindrome('cataca'));
console.log(isPalindrome('ca tat ac'));
