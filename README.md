# Aria2 Fast

### 解除线程限制，仅适用于 64 位 Windows <br>
修改如下：
+ `max-connection-per-server` 默认为128，最大可能为 4294967295 (不确定)
+ `piece-length` 默认为1M，最小可设置为1k
+ `min-split-size` 默认为1M，最小可设置为1k

解释下参数含义：
+ piece-length：多线程分割文件时，每个线程分割的文件大小是这个数值的倍数。
+ min-split-size：多线程分割文件时，每个线程最小的分割文件大小，受 `piece-length` 限制，不能比 `piece-length` 更小。
+ max-connection-per-server：单服务器连接数，也就是常说的线程数，受 `min-split-size` 限制，实际线程数不大于 `文件大小/min-split-size`。

补丁修改自 AUR(ArchLinux User Repository): https://aur.archlinux.org/cgit/aur.git/plain/aria2-fast.patch?h=aria2-fast

**注：此版本可能会较官方版占用更多的 CPU 资源，如非必要请不要把线程数拉得太高。**

