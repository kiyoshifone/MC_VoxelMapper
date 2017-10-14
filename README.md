# MC_VoxelMapper
VoxelMapの色々をできる．  
じゃあ，できることを紹介するから，みんなさん読んでみよう．

## MC_VM_cachereloader.py
VoxelMapのキャッシュ読み込みが遅くなると，ワールド移動のさいにクライアントがなかなか固まるだろうから，  
だからこれを作った．  
zipファイルをよく読んでくれるから，これを決まった時間に1度読めば，マップのcacheファイルが押しやられない．  
つまりcacheが元気で居続けてくれる．  
そうすればワールドを移動してもクライアントが重くならないんだろうｗ  

使い方としては， snameとsaddrにサーバ名とサーバアドレスを書いて，変数を完成する．  
そしてこれを定期的に実行すればいい．
どこのディレクトリにいれておいても大丈夫．

## MC_VM_shigener.sh
資源が更新されたら，さっさと古い資源のcacheを捨てるべき，  
だからこれを実行すれば古いcacheも簡単に見つけ出して削除できる．
