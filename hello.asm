;====

assume cs:codeseg,ds:dataseg ;建立关联
	
dataseg segment ;数据段	
	
dataseg ends	
	
codeseg segment ;代码段	
	
main proc far   ;主函数	
	
start:          ;代码段起点	
	
		 mov ax,dataseg	
		 mov ds,ax	
 		 	
		 	
		 mov ax,4c00H ;结束程序	
		 int 21H	
main endp	
	
codeseg ends	
	
end start      ;表明代码段的起始位置
