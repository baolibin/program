

###### ArrayList、LinkedList与Vector对比：

| 集合 | 底层实现 | 初始化 | 扩容 | 线程安全 | Get查询&Set修改<br>时间复杂度 | add增加&remove删除<br>时间复杂度 |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| ArrayList | 动态数组 | 空集合<br>初始容量为0<br>添加元素后默认容量10 | 原集合1.5倍 | 否 |  O（1） | O（n）|     
| LinkedList | 双向链表 | 空集合<br>初始长度为0 | 修改指针 | 否 | O（n） | O（1） |
| Vector | 动态数组 | 空集合<br>初始容量为10 | 扩充因子数值<br>否则扩充1倍 | 是 | O（1） | O（n）|

