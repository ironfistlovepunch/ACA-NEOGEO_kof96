# ACA-NEOGEO_kof96
# kof96.bat

アケアカNEOGEO (Android)    
KOF '96  
https://play.google.com/store/apps/details?id=com.snk.acakof96  
確認バージョン  
バージョン 1.2.0  
最終更新日 2025/11/17  

参考にしたもの  
https://milkchoco.info/archives/5562  

必要なファイル  
romcutter.exe  
BSwap.exe と oddeven.txt  

注意  
095-s1.s1  
意味はないけど分かりやすいように更新日時を新しくする。  

095-epr.ep1  
必要ないけど一応切り出す。  
デバッグモード対策で用意されたp1用のパッチ？  
https://note.com/shigeshigeru/n/n75303245d96d

095-p1.p1  
先頭512KBが095-epr.ep1と一致  
本来のp1にパッチ適用されたもののようでcrcが合わないので連続FFの部分を使って無理やりcrc変更。  
そのまま動く環境なら必要ない。

その他  
PROM 別のファイルからも取れる。コメントアウトして一応残す。    

