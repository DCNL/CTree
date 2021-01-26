カリキュラムツリーの作り方

1. 「.dot」ファイル：
    科目間の関係を記述するテキストファイル

    例) CTreeCommon.dot の一部

    ------
    # 1年前期
    {
	rank = same
	rankdir = TB
	D1S [style="invis"]
	 情報工学概論 -> コンピュータリテラシー -> 基礎ゼミ -> D1S [style="invis"]
    }
    -----

2.  ツリーの変更

    まず，対象となる.dotファイルを編集する．
    makeコマンドを実行する．

    例)	% open -a TextEdit foo.dot
    	% make


     
