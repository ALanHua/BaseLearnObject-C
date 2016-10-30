//
//  SingleList.h
//  InterviewCodes
//
//  Created by yhp on 2016/10/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#ifndef SingleList_h
#define SingleList_h

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct slist_node {
    struct slist_node * next;
};
typedef void (*list_op_free_node)(struct slist_node *node);
typedef int (*list_op_key_hit_test)(struct slist_node *node, void *key);

struct single_list {
    struct slist_node * head;
    struct slist_node * tail;
    int size;

    // FUNC
    void (*free_node)(struct slist_node *node);
    int (*key_hit_test)(struct slist_node *node, void *key);
    struct single_list *(*add)(struct single_list * list, struct slist_node * node);
    struct single_list *(*insert)(struct single_list * list, int pos, struct slist_node *node);
    struct single_list *(*replace)(struct single_list *list, int pos, struct slist_node *node);
    struct slist_node *(*find_by_key)(struct single_list *list, void * key);
    struct slist_node *(*first)(struct single_list* list);
    struct slist_node *(*last)(struct single_list* list);
    struct slist_node *(*at)(struct single_list * list, int pos);
    struct slist_node *(*take_at)(struct single_list * list, int pos);
    struct slist_node *(*take_by_key)(struct single_list * list, void *key);
    struct single_list *(*remove)(struct single_list * list, struct slist_node * node);
    struct single_list *(*remove_at)(struct single_list *list, int pos);
    struct single_list *(*remove_by_key)(struct single_list *list, void *key);
    int (*length)(struct single_list * list);
    void (*clear)(struct single_list * list);
    void (*deletor)(struct single_list *list);
};

#define single_list_entry(type,pos,member) \
(type*)((char*)pos-(unsigned long)(&((type*)0)->member))
struct single_list * new_single_list(list_op_free_node op_free, list_op_key_hit_test op_cmp);

#endif /* SingleList_h */
