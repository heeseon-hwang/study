-- 코드를 작성해주세요
select info.item_id, info.item_name, info.rarity
    from item_info as info
        join item_tree as tree
            on info.item_id = tree.item_id
    where info.item_id 
        not in (select parent_item_id 
                    from item_tree
                    where parent_item_id is not null)
    order by info.item_id desc;