//
//  main.m
//  day20
//
//  Created by yhp on 2017/3/19.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
// 常量
static const NSTimeInterval kAnimationDuration = 0.3;

typedef enum WWWWConnectionState{
    WWWWConnectionStateDisconnected,
    WWWWConnectionStateConnecting,
    WWWWConnectionStateConnected
}WWWWConnectionState;

// 新的枚举类型
typedef NS_ENUM(NSUInteger,WWConnectionState) {
    WWWConnectionStateDisconnected,
    WWWConnectionStateConnecting,
    WWWConnectionStateConnected
};

typedef NS_OPTIONS(NSUInteger,WWPernittedDirection){
    WWPernittedDirectionUp      = 1 << 0,
    WWPernittedDirectionDown    = 1 << 1,
    WWPernittedDirectionLeft    = 1 << 2,
    WWPernittedDirectionRight   = 1 << 3,
};

// 属性特质
/*
 readwrite --- getter / setter memthod
 readonly  --- getter
 assign    --- 设置方法"只会执行针对"纯量类型
 strong    --- 拥有关系，会保存数据 设置新值时，设置方法会先保留新值，释放旧值，然后再将新值设置上去
 weak      --- 非拥有关系，设置新值时，设置方法既不保留新值，也不释放旧值，属性遭到摧毁时，属性值会清空
 unsafe_unretained --- 但它适用于"对象类型",表达"非拥有关系
 copy      --- 设置方法不保留新值，而是将其拷贝
 */

/*
 大小端 0x12345678
 大端 ------ 12 34 56 78
 小端 ------ 78 56 34 12
 */
union test{
    short i;
    char  str[sizeof(short)];
};

void littleOrBigEndianTest(void)
{
    union test tt;
    tt.i = 0x1234;
    if (sizeof(short) == 2) {
        if ((tt.str[0] == 0x12) && (tt.str[1] = 0x34)) {
            NSLog(@"大端，0:0x%x,1:0x%x",tt.str[0],tt.str[1]);
        }else{
            NSLog(@"小端，0:0x%x,1:0x%x",tt.str[0],tt.str[1]);
        }
    }
}
id genericTypeString = @"Some string"; // 分配在堆上

/***
 description 
 debugDescription 
 实现打印更多类信息
 */

/**
 链表
 */
typedef struct tagNode Node;
struct tagNode
{
    int data;
    Node* next;
};

/**
 删除链表节点
 @param cur 链表
 */
void deleteRandomNode(Node* cur)
{
    assert(cur != NULL);
    assert(cur->next != NULL);
    Node* pNext = cur->next;
    cur->next = pNext->next;
    cur->data = pNext->data;
    free(pNext);
}


/**
 反转链表
 @param pHead 链表头节点
 @return 反转好的链表
 */
Node* reverseByLoop(Node* pHead)
{
    if (pHead == NULL || pHead->next == NULL) {
        return pHead;
    }
    
    Node* pPrev = NULL;
    Node* pNext = NULL;
    
    while (pHead != NULL) {
        pNext = pHead->next;
        pHead->next = pPrev;
        pPrev = pHead;
        pHead = pNext;
    }
    return pPrev;
}

Node* reverseByRecursion(Node* pHead)
{
    if (pHead == NULL || pHead->next == NULL) {
        return pHead;
    }
    
    Node* pNewNode = reverseByRecursion(pHead->next);
    pHead->next->next = pHead;
    pHead->next = NULL;
    
    return pNewNode;
}

/**
 求链表倒数第k个及诶点
 @param pHead 头结点
 @param k 第几个
 @return 第几个节点
 */
Node* theKtheNode(Node* pHead,int k)
{
    if (k < 0) {
        return NULL;
    }
    
    Node* pSlow = pHead;
    Node* pFast = pHead;
    int i = k;
    for (; i > 0 && pFast != NULL;i--) {
        pFast = pFast->next;
    }
    
    if (i > 0) {
        return NULL;// k 值大于原链表长度的异常
    }
    
    while (pFast != NULL) {
        pFast = pFast->next;
        pSlow = pSlow->next;
    }
    return pSlow;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%f",kAnimationDuration);
        WWWWConnectionState e = WWWWConnectionStateConnected;
        NSLog(@"%d",e);
        // 对象同性
        NSString* foo = @"Badge 123";
        NSString* bar = [NSString stringWithFormat:@"Badge %i",123];
        BOOL equalA = (foo == bar);
        BOOL equalB = [foo isEqual:bar];
        BOOL equalC = [foo isEqualToString:bar];
        NSLog(@"%p,%p",foo,bar);
        NSLog(@"%d,%d，%d",equalA,equalB,equalC);
//        NSLog(@"shrt %zd",sizeof(short));
        littleOrBigEndianTest();
    }
    return 0;
}
