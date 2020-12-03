# 42_ft_mini_ls_test

ft_mini_lsのテストです。

<img width="322" alt="スクリーンショット 2020-12-04 0 53 44" src="https://user-images.githubusercontent.com/60336548/101053470-2b898c80-35cb-11eb-9b1b-68fb68080772.png">

<img width="437" alt="スクリーンショット 2020-12-04 1 14 12" src="https://user-images.githubusercontent.com/60336548/101056171-0cd8c500-35ce-11eb-8ccf-2214a36c68a0.png">


## Installation
> ```git clone git@github.com:jijiji-onaka/42_ft_mini_ls_test.git```

`ft_mini_ls`があるディレクトリでcloneしてください。

Clone in the directory where `ft_mini_ls` is located.

## Usage

### diff check
`make`　または　`make bonus`をしてから

`make` or `make bonus` and then

> ```git clone git@github.com:jijiji-onaka/42_ft_mini_ls_test.git && bash 42_ft_mini_ls_test.git/test.sh```

これでテストが始まります。

Now the testing begins.

### memory leak check
leaksコマンドによるチェックなので`-fsanitize=address`を付けずにコンパイルしてください。

Compile without the `-fsanitize=address` because it is checked by the leaks command.

> ```git clone git@github.com:jijiji-onaka/42_ft_mini_ls_test.git && bash 42_ft_mini_ls_test.git/leak.sh```

これでmemory leaksチェックできます。

Now you can check the memmory leaks.

## other

テストケースに漏れがあったら教えてください。

I would appreciate it if you could let me know if there are any loopholes in the test cases.
