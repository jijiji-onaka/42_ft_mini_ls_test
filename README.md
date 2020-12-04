# 42_ft_mini_ls_test

ft_mini_lsのテストです。

ft_mini_ls test.

<img width="322" alt="スクリーンショット 2020-12-04 0 53 44" src="https://user-images.githubusercontent.com/60336548/101053470-2b898c80-35cb-11eb-9b1b-68fb68080772.png">

<img width="432" alt="スクリーンショット 2020-12-04 1 32 07" src="https://user-images.githubusercontent.com/60336548/101058605-a903cb80-35d0-11eb-8586-fa750328c1a6.png">


## Installation
```
git clone https://github.com/jijiji-onaka/42_ft_mini_ls_test.git
```

`ft_mini_ls`があるディレクトリでcloneしてください。

Clone in the directory where `ft_mini_ls` is located.

## Usage

### diff check

**⚠️　Caution　⚠️**

`.TESTAAAAAAAAAAA`というディレクトリすでにある場合は名前を変更しておいてください。
でなければ、消えます。

If the `.TESTAAAAAAAAAAA` directory already exists, please rename it.
Otherwise, it will disappear.


`make`　または　`make bonus`をしてから

`make` or `make bonus` and then

```
bash 42_ft_mini_ls_test.git/test.sh
```

これでテストが始まります。

Now the testing begins.

**⚠️　Caution　⚠️**

もし遅く感じた場合はtest.shの`sleep 0.2`を全て削除してください。

If you feel it's too slow, delete all the `sleep 0.2` in test.sh.

### memory leak check
leaksコマンドによるチェックなので`-fsanitize=address`を付けずにコンパイルしてください。

Compile without the `-fsanitize=address` because it is checked by the leaks command.

```
bash 42_ft_mini_ls_test.git/leak.sh
```

これでmemory leaksチェックできます。

Now you can check the memmory leaks.

### Makefile 
```
TEST_DIR = ./42_ft_mini_ls_test/
TEST = $(addprefix $(TEST_DIR), test.sh)
LEAK = $(addprefix $(TEST_DIR), leak.sh)

test: $(LIBFT) $(BONUS_OBJS)
	$(CC) -g -fsanitize=address $(CFLAGS) -o $(NAME) $(BONUS_OBJS) $(LIBFT)
	bash $(TEST)

OP =

leak: bonus
	bash $(LEAK) $(OP)
```

このようにMakefileに追加しておくと`make test` `make leak`でテスト出来るようになります。

If you add it to your Makefile, you can use `make test` `make leak` to test it.

## other

テストケースに漏れがあったら教えてください。


I would appreciate it if you could let me know if there are any loopholes in the test cases.
