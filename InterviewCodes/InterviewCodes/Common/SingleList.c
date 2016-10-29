//
//  SingleList.c
//  InterviewCodes
//
//  Created by yhp on 2016/10/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "SingleList.h"

// 添加节点
struct single_list * _add_node(struct single_list * list, struct slist_node * node)
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
struct single_list * _insert_node(struct single_list * list, int pos, struct slist_node *node)
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
struct single_list* _replace(struct single_list *list, int pos, struct slist_node *node)
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
struct slist_node * _find_by_key(struct single_list * list, void * key)
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
struct slist_node * _first_of(struct single_list* list)
{
    return list->head;
}

/**
 链表中最后一个节点

 @param list 链表
 @return 节点
 */
struct slist_node * _last_of(struct single_list* list)
{
    return list->tail;
}

/**
 对应节点的节点

 @param list 链表
 @param pos 节点序列号
 @return 节点
 */
struct slist_node * _node_at(struct single_list * list, int pos)
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
struct slist_node * _take_at(struct single_list * list, int pos)
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
            
        }
    }
    return NULL;
}

/*

struct slist_node * _take_by_key(struct single_list * list, void *key)
{

}
struct single_list * _remove_node(struct single_list * list, struct slist_node * node)
{

}
struct single_list * _remove_at(struct single_list *list, int pos)
{

}
struct single_list *_remove_by_key(struct single_list *list, void *key)
{

}
int _length_of(struct single_list * list)
{

}
void _clear_list(struct single_list * list)
{

}
void _deletor_list(struct single_list *list)
{

}
*/
