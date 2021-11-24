
function reverseOnlyLetters(S) {
    let arr = S.split('');
    let left = 0;
    let right = arr.length - 1;
    while (left < right) {
        if (isLetter(arr[left])) {
            if (isLetter(arr[right])) {
                let temp = arr[left];
                arr[left] = arr[right];
                arr[right] = temp;
                left++;
                right--;
            } else {
                right--;
            }
        } else {
            left++;
        }
    }
    return arr.join('');
}

