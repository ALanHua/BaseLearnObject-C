//
//  SingleList.c
//  InterviewCodes
//
//  Created by yhp on 2016/10/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "SingleList.h"

/**
 添加节点

 @param list 链表
 @param node 新节点
 @return 新链表
 */
static struct single_list * _add_node(struct single_list * list, struct slist_node * node)
{
    
    if (list->tail) {// 加在尾
        list->tail->next = node;
        node->next = NULL;
        list->tail = node;
        list->size++;
    }else{
        list->head = node;
        list->tail = node;
        node->next = NULL;
        list->size = 1;
    }
    return list;
}

/**
 插入节点

 @param list 链表
 @param pos  位置
 @param node 节点数据
 @return 链表
 */
static struct single_list * _insert_node(struct single_list * list, int pos, struct slist_node *node)
{
    // 尾插，头插,中间插
    struct slist_node* prev = list->head;
    struct slist_node* p = list->head;
    int i;
    if (pos < list->size) {
        for (i = 0; i < pos; i++) {
            prev = p;
            p = p ->next;
        }
        // 找到该节点
        if (p == list->head) {
            node->next = list->head;
            list->head = node;
        }else{
            prev->next = node;
            node->next = p;
        }
        if (node->next == NULL) {
            list->tail = node;
        }
        // 节点加1
        list->size++;
    }else{
        list->add(list,node);// 尾插
    }
    return list;
}

/**
 替换链表中的节点

 @param list 链表
 @param pos 位置
 @param node 节点数据
 @return 链表
 */
static struct single_list* _replace(struct single_list *list, int pos, struct slist_node *node)
{
    if(pos < list->size) {
        int i;
        struct slist_node* prev = list->head;
        struct slist_node* p = list->head;
        for (i = 0; i < pos; i++) {
            prev = p;
            p = p->next;
        }
        if (list->head == p) {
            node->next = list->head->next;
            list->head = node;
        }else{
            prev->next = node;
            node->next = p;
        }
        if (node->next == NULL) {
            list->tail = node;
        }
        if (list->free_node) {
            list->free_node(p);
        }else{
            free(p);
        }
        
    }
    return list;
}

/**
 通过键值找到节点

 @param single_list 链表
 @param key 键值
 @return 节点
 */
static struct slist_node * _find_by_key(struct single_list * list, void * key)
{
    if (list->key_hit_test) {
        struct slist_node* p = list->head;
        while (p) {
            if (list->key_hit_test(p,key) == 0) {
                return p;
            }
            p = p->next;
        }
    }
    return NULL;
}
/**
 链表中第一个节点

 @param list 链表
 @return 节点
 */
static struct slist_node * _first_of(struct single_list* list)
{
    return list->head;
}

/**
 链表中最后一个节点

 @param list 链表
 @return 节点
 */
static struct slist_node * _last_of(struct single_list* list)
{
    return list->tail;
}

/**
 对应节点的节点

 @param list 链表
 @param pos 节点序列号
 @return 节点
 */
static struct slist_node * _node_at(struct single_list * list, int pos)
{
    if(pos < list->size){
        struct slist_node* p = list->head;
        int i;
        for (i = 0; i < pos; i++) {
            p = p->next;
        }
        return p;
    }
    return NULL;
}
/**
 取出对应位置的节点

 @param list list
 @param pos 下标
 @return 节点
 */
static struct slist_node * _take_at(struct single_list * list, int pos)
{
    if (pos < list->size) {
        int i;
        struct slist_node* p = list->head;
        struct slist_node* prev = list->head;
        for (i = 0; i < pos; i++) {
            prev = p;
            p = p->next;
        }
        if(p == list->head) {
            list->head = p->next;
            if(list->head == NULL){
                list->tail = NULL;
            }
        }else if (p == list->tail){
            list->tail = prev;
            prev->next = NULL;
        }else{
            prev->next = p->next;
        }
        list->size--;
        p->next = NULL;
        return p;
    }
    return NULL;
}

/**
 通过键值获取节点

 @param list 链表
 @param key 键值
 @return 节点
 */
static struct slist_node * _take_by_key(struct single_list * list, void *key)
{
    if(list->key_hit_test){
        struct slist_node* p = list->head;
        struct slist_node* prev = list->head;
        while (p) {
            if (list->key_hit_test(p,key) == 0) {
                break;
            }
            prev = p;
            p = p->next;
        }
        if(p == list->head) {
            list->head = p->next;
            if(list->head == NULL){
                list->tail = NULL;
            }
        }else if (p == list->tail){
            list->tail = prev;
            prev->next = NULL;
        }else{
            prev->next = p->next;
        }
        list->size--;
        p->next = NULL;
        return p;
    }
    return NULL;
}

/**
 删除节点

 @param list 链表
 @param node 节点
 @return 新链表
 */
static struct single_list * _remove_node(struct single_list * list, struct slist_node * node)
{
    struct slist_node* p = list->head;
    struct slist_node* prev = list->head;
    while (p) {
        if (p == node) {
            break;
        }
        prev = p;
        p = p->next;
    }
    // 找到节点
    if(p){
        if(p == list->head) {
            list->head = p->next;
            if(list->head == NULL){
                list->tail = NULL;
            }
        }else if (p == list->tail){
            list->tail = prev;
            prev->next = NULL;
        }else{
            prev->next = p->next;
        }
        list->size--;
        if (list->free_node) {
            list->free_node(p);
        }else{
            free(p);
        }
    }
    return list;
}
/**
 删除指定位置的节点

 @param list 链表
 @param pos 指定位置
 @return 链表
 */
static struct single_list * _remove_at(struct single_list *list, int pos)
{
    if (pos < list->size) {
        int i;
        struct slist_node* p = list->head;
        struct slist_node* prev = list->head;
        for (i = 0; i < pos; i++) {
            prev = p;
            p = p->next;
        }
        if(p){
            if(p == list->head) {
                list->head = p->next;
                if(list->head == NULL){
                    list->tail = NULL;
                }
            }else if (p == list->tail){
                list->tail = prev;
                prev->next = NULL;
            }else{
                prev->next = p->next;
            }
            list->size--;
            if (list->free_node) {
                list->free_node(p);
            }else{
                free(p);
            }
        }
    }
    return list;
}
/**
 通过键值删除节点

 @param list 链表
 @param key 键值
 @return 新链表
 */
static struct single_list *_remove_by_key(struct single_list *list, void *key)
{
    struct slist_node* p = list->head;
    struct slist_node* prev = list->head;
    while (p) {
        if (list->key_hit_test) {
            if (list->key_hit_test(p,key) == 0) {
                break;
            }
            prev = p;
            p = p->next;
        }
    }
    // 删除节点操作
    if(p){
        if(p == list->head) {
            list->head = p->next;
            if(list->head == NULL){
                list->tail = NULL;
            }
        }else if (p == list->tail){
            list->tail = prev;
            prev->next = NULL;
        }else{
            prev->next = p->next;
        }
        list->size--;
        if (list->free_node) {
            list->free_node(p);
        }else{
            free(p);
        }
    }
    return list;
}
/**
 链表长度

 @param list 链表
 @return 链表长度
 */
static int _length_of(struct single_list * list)
{
    return list->size;
}
/**
 清除链表

 @param 无
 */
static void _clear_list(struct single_list * list)
{
    struct slist_node* p = list->head;
    struct slist_node* prev = list->head;
    while (p) {
        prev = p;
        if (list->free_node) {
            list->free_node(p);
        }else{
            free(p);
        }
        p = prev->next;
    }
    list->size = 0;
    list->head = list->tail = NULL;
}
/**
 销毁链表

 @param 无
 */
static void _delete_single_list(struct single_list *list)
{
    list->clear(list);
    free(list);
}
/**
 创建链表

 @param op_free 节点地址释放函数
 @param op_cmp 通过键值找节点
 @return 一个链表
 */
struct single_list * new_single_list(list_op_free_node op_free, list_op_key_hit_test op_cmp)
{
    struct single_list* list = (struct single_list*)malloc(sizeof(struct single_list));
    if (list == NULL) {
        return NULL;
    }
    list->head = NULL;
    list->tail = NULL;
    list->size = 0;
    list->free_node = op_free;
    list->key_hit_test = op_cmp;
    list->add = _add_node;
    list->insert = _insert_node;
    list->replace = _replace;
    list->find_by_key = _find_by_key;
    list->first = _first_of;
    list->last = _last_of;
    list->at = _node_at;
    list->take_at = _take_at;
    list->take_by_key = _take_by_key;
    list->remove = _remove_node;
    list->remove_at = _remove_at;
    list->remove_by_key = _remove_by_key;
    list->length = _length_of;
    list->clear = _clear_list;
    list->deletor = _delete_single_list;
    return list;
}
/**************模块测试*************/
#define ST_CALL(THIS,func,args...)  (THIS->func(THIS,args))
#define ST_CALL_0(THIS,func)        (THIS->func(THIS))
struct int_node{
    struct slist_node node;
    int id;
};
struct string_node{
    struct slist_node node;
    char name[16];
};

static void _string_child_free( struct slist_node* node)
{
    static int string_free_flag = 0;
    free(node);
    if (!string_free_flag) {
        string_free_flag = 1;
        printf("int node free\n");
    }
}

static int _string_slist_hittest(struct slist_node * node, void *key)
{
    struct string_node* sn = (struct string_node*)node;
    return strcmp(sn->name, key);
}

void slist_test(void)
{
    struct single_list* list = new_single_list(_string_child_free,_string_slist_hittest);
    int i;
    for (i = 0; i < 20; i++) {
        struct string_node* s_node = (struct string_node*)malloc(sizeof(struct string_node));
        sprintf(s_node->name, "%d",i);
        if (i % 2 == 0) {
            list->add(list,&s_node->node);
        }else{
            list->insert(list,1,&s_node->node);
        }
    }
    //...省略
}



