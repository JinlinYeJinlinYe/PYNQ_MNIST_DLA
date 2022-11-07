# PYNQ_MNIST_DLA

从复试结束就开始学习FPGA加速神经网络相关知识，经过半年的跌跌撞撞，终于捋清了神经网络加速器的开发流程，现以mnist为例进行整理。

硬件：正点原子的Zynq7020
软件：Tensorflow1.14.0、Python3.6、Vivado 2018.3、Vivado HLS 2018.3

主要思路：
1.通过Tensorflow搭建MNIST网络并训练提取每层网络的参数
2.通过HLS描述卷积和池化的计算过程综合为RTL级语言并生成IP核
3.通过Vivado创建Block Design搭建电路模块图生成比特流并导出Overlay
4.通过Python搭建MNIST网络并加载第一步中训练好的网络参数，调用Overlay中的卷积和池化函数实现推理

详细文档可以看这篇文章：
https://zhuanlan.zhihu.com/p/580895255
