package.path = GetPackagePath();
local loadArr={"�Զ�����"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end

--ָ��ְҵ  Ұ���ˡ�Ů�ס����塢�����������ߡ���Ӱ��ʥ����ɮ��
g_newRoleJob="����"
--����ְҵ ��ʿ����ͽ�����������͡����ۡ�׷���ߡ������ҡ�Ԫ��ʹ���ٻ�ʦ�������ߡ���ʿ���ھ����й١�ʥ�ڡ��ػ��ߡ���Ӱ��ʦ����թʦ���ƻ��ߡ�����ʹͽ��
g_shengHuaJob="����"
--����ʹ�õ����� ֧��(��}����}צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����Ҫ�������м���|�ֿ�
SetUseWeapon("��|����")
--�����Լ��õ�װ������ 
SetUseZhuangBeiTypeData("Dex","�·�")
SetUseZhuangBeiTypeData("Dex","ͷ��")
SetUseZhuangBeiTypeData("Str|StrInt|Int","����")
SetUseZhuangBeiTypeData("Str|StrInt|Int","Ь��")
SetUseZhuangBeiTypeData("StrInt","����")

g_attackDis=60				--��������
g_duobiHpVal=0.2

--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч

SetNeedSkillLineData(95,"�ن��W�ħ��,nil|�܂��rʩ���o��,nil|���g����,nil|",nil,nil,nil)
SetNeedSkillLineData(96,"䓽��F��,nil|Ԫ�؜Q��,nil|����,nil",nil,9,nil)
SetNeedSkillLineData(97,"����֮��,nil|�ѓ���ӡӛ,nil|���Еrӡӛ�o��,nil",nil,nil,nil)
SetNeedSkillLineData(98,"��Ƭ�h��,nil|����֮�|�o��,nil|���ٹ����o��,nil|���؈D�v�o��,nil|�Ͷ�Ͷ�����o��,nil",nil,nil,nil)
SetNeedSkillLineData(99,"���g��ʸ,nil|̓�ղٿv�o��,nil|�Ͷ�Ͷ�����o��,nil|�O�ٿ�ʹ�o��,nil|����Ч���o��,nil|��Ӱ�����o��,nil|��͸�o��,nil",nil,nil,nil)
SetNeedSkillLineData(100,"ȼ����ʸ,nil|��͸�o��,nil",2,nil,nil)

--��ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��

AddAttackSkillData("���g��ʸ","Caustic Arrow")
AddAttackSkillData("ȼ����ʸ","Burning Arrow")
AddAttackSkillData("��ͨ����","melee")

SetDebuffSkill(nil,"snipers_mark",nil,"curse_snipers_mark")--�ѓ���ӡ��

--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�
SetSkillLimitMaxLv("�܂��rʩ���o��",nil,1)
SetSkillLimitMaxLv("���g����",nil,1)


-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--�������ʱ�ٻ����������� mapClassName=����ͼ���� name=������ className=��������

SetNeedFlaskData(1,"����ҩ��","nil")
SetNeedFlaskData(2,"����ҩ��","nil")
SetNeedFlaskData(3,"ˮ��ҩ��","nil")
SetNeedFlaskData(4,"ħ��ҩ��","nil")
SetNeedFlaskData(5,"ħ��ҩ��","nil")


g_addHpVal=0.7--HP���ڶ��ٳԺ�ҩ
g_addMpVal=0.2--MP���ڶ��ٳ���ҩ

---------------------------------------��װ����
--SetAtuoChangeEquipData(job,pos,name,val,yijie) ���㷽ʽ���� �����������ֵ���Ա���ֵ  ����װ���߾ͻ�������
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--pos ��λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) ���������м���|����
--name ������ ֧����Ϸ�ڵ�װ�������� �����������Զ�����(�����˺������ס����ܡ����ܡ��������ܶ�)
--val ����ֵ ֧��С��
--nType ��װ���� 0��nil����Ϊһֱ��Ч 1Ϊ��ͼʱ����Ч 2Ϊ���ʱ����Ч
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_and_cold_damage_resistance_%",0.25)--�������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_and_lightning_damage_resistance_%",0.25)--�����������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","cold_and_lightning_damage_resistance_%",0.2)--��˪�������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_resist_all_elements_%",0.35)--ȫԪ�ؿ��� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_fire_damage_resistance_%",0.3)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_cold_damage_resistance_%",0.3)--������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_lightning_damage_resistance_%",0.3)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","cold_damage_resistance_%",0.3)--��˪���� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_damage_resistance_%",0.3)--���濹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","lightning_damage_resistance_%",0.3)--���翹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_movement_velocity_+%",0.3)--�����ƶ��ٶ� +%
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_maximum_life",0.3)--����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","movement_velocity_+%",0.3)--�ƶ��ٶ� +%

SetAtuoChangeEquipData("����","����","additional_strength",0.2)--
SetAtuoChangeEquipData("����","����","additional_intelligence",0.2)--
SetAtuoChangeEquipData("����","����","additional_strength_and_intelligence",0.3)--

--����
SetAtuoChangeEquipData("����","��","�����˺�",5,nil)
SetAtuoChangeEquipData("����","��","Local_Maximum_Added_Chaos_Damage",5,nil)
SetAtuoChangeEquipData("����","��","Local_Physical_Damage_%",5,nil)
SetAtuoChangeEquipData("����","��","Dot_Multiplier_%",5,nil)

--����--��ɫ

SetZhengTiColorVarData(2,0,5,1,nil,500,true)
SetZhengTiColorVarData(2,0,6,0,nil,450,true)
SetZhengTiColorVarData(2,0,4,1,nil,400,true)
SetZhengTiColorVarData(2,0,5,0,nil,350,true)
SetZhengTiColorVarData(2,0,4,0,nil,300,true)
SetZhengTiColorVarData(2,0,3,1,nil,250,true)
SetZhengTiColorVarData(2,0,3,0,nil,200,true)
SetZhengTiColorVarData(2,0,2,0,nil,150,true)
SetZhengTiColorVarData(2,0,1,0,nil,100)
SetZhengTiColorVarData(2,1,0,0,nil,60)
SetZhengTiColorVarData(2,0,0,1,nil,50)

SetZhengTiColorVarData(3,0,5,1,nil,500,true)
SetZhengTiColorVarData(3,0,6,0,nil,450,true)
SetZhengTiColorVarData(3,0,4,1,nil,400,true)
SetZhengTiColorVarData(3,0,5,0,nil,350,true)
SetZhengTiColorVarData(3,0,4,0,nil,300,true)
SetZhengTiColorVarData(3,0,3,1,nil,250,true)
SetZhengTiColorVarData(3,0,3,0,nil,200,true)
SetZhengTiColorVarData(3,0,2,0,nil,150,true)
SetZhengTiColorVarData(3,0,1,0,nil,100)
SetZhengTiColorVarData(3,1,0,0,nil,60)
SetZhengTiColorVarData(3,0,0,1,nil,50)

SetZhengTiColorVarData(4,3,0,0,nil,300,true)
SetZhengTiColorVarData(4,2,0,0,nil,200,true)
SetZhengTiColorVarData(4,1,0,0,nil,100)

SetZhengTiColorVarData(5,1,3,0,nil,400,true)
SetZhengTiColorVarData(5,0,4,0,nil,350,true)
SetZhengTiColorVarData(5,0,3,0,nil,300,true)
SetZhengTiColorVarData(5,0,2,0,nil,200,true)
SetZhengTiColorVarData(5,0,1,0,nil,100)

SetZhengTiColorVarData(9,2,0,2,nil,400,true)
SetZhengTiColorVarData(9,1,0,3,nil,350,true)
SetZhengTiColorVarData(9,1,0,2,nil,300,true)
SetZhengTiColorVarData(9,1,0,1,nil,200,true)
SetZhengTiColorVarData(9,0,0,1,nil,100)

SetZhengTiColorVarData(10,2,0,2,nil,400,true)
SetZhengTiColorVarData(10,1,0,3,nil,350,true)
SetZhengTiColorVarData(10,1,0,2,nil,300,true)
SetZhengTiColorVarData(10,1,0,1,nil,200,true)
SetZhengTiColorVarData(10,0,0,1,nil,100)



AddShengJiZhuangBeiGoodsData("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",0,50,0)--������Ч ����50�����õ����ɫװ��
AddShengJiZhuangBeiGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,50,0)--������Ч ����50�����ø�������ɫװ��

--������+ϡ���� ���ʱ����Ч
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_rarity_+%",0.5,2)--���A��Ʒ����Ʒ�| +%
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_quantity_+%",1.5,2)--��Ʒ���䔵������ %

--�߼���װ����
SetGaoJiHuanZhuangData("����","����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1","�޾�֮��","Tabula Rasa")
SetGaoJiHuanZhuangData("����","����ñ","Metadata/Items/Armours/Helmets/HelmetDex1","����ñ","Goldrim")

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--������ͼʱ���� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� shengjiMapClassName=Ҫˢ�ĵ�ͼ���� needLv=���������ټ�Ϊֹ
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--�� �������������� ��ʱ��ˢ����ʥ�ص�50���ٽ�����һ����
SetTaskShengJiData("a9q3",nil,"2_9_1",68,true)--�� ���L���w�� ��ʱ��ˢ�BѪˮ����68���ٽ�����һ����

SetTaskMiGongData("a8q7",nil,1)--���ڵ���a9q1�� ���Թ�1
SetTaskMiGongData("a10q1",nil,2)--���ڵ���a10q1 ���Թ�2
SetTaskMiGongDataByLv(82,3)--���ڵ���80�� ���Թ�3


SetChangeLimitCnt("����|�·�|ͷ��|����|Ь��",1)
SetChangeLimitCnt("����",2)
SetChangeLimitCnt("����|��ָ",2)


--SetNeedAddTianFu(tfStr)--�����츳�ӵ� 
SetNeedAddTianFu("����=attack_speed568-Ͷ�������������|accuracy581-Ͷ��������c�����ٶ�|attack_speed1488-�����ٶ�|attack_speed1489-�����ٶ�|attack_speed1487-�����ٶ�|perfect_aim591-�����W|bow_damage_and_speed498-���Ă���|greater_impact638-���`ף��|mana1479-ħ����ˎ��Ч��|mana1478-ԭʼ����|stun_recovery544-�����ͱ��╞ѣ|avoid_stun553-��ľ֮��|stun_recovery543-�����ͱ��╞ѣ|finesse993-����|dexterity995-����|intelligence957-�ǻ�|dexterity848-����|strength815-����|chaos_damage1578-������m�����ӳ�|chaos_damage1579-������m�����ӳ�|dagger_leech_notable2537-���M|mastery_chaos47-���猣��-1727|dexterity981-����|agility965-���C֮�w|life703-����|fitness617-ѪҺ��ȡ|degeneration_damage1569-���m����|degeneration_damage_notable1575-�y��|degeneration_damage1570-���m����|acceleration1238-����֮��|aura_area_of_effect1203-��hЧ������|reduced_mana_reservation1199-����Ч��|aura_effect_reservation_cost_notable1558-����|dexterity855-����|dexterity856-����|bow_chaos2508-���Ă���|bow_chaos2509-���Ă���|master_fletcher515-�C��֮��|dexterity865-����|dexterity866-����|projectile_damage1233-Ͷ�������|projectile_damage_pierce1685-��͸|projectile_pierce_notable1687-�����ʸ|dexterity864-����|bow_damage506-���Ă���������|bow_damage_and_speed500-���Ă����͹����ٶ�|bow_damage505-���Ă����͹����ٶ�|bow_damage_and_speed501-���Ă����͹����ٶ�|deadly_draw680-�wʸ�ڎ�|dexterity860-����|dexterity867-����|intelligence927-�ǻ�|intelligence926-�ǻ�|intelligence906-�ǻ�|intelligence930-�ǻ�|intelligence960-�ǻ�|aura_effect1553-��hЧ��|reduced_mana_reservation1200-����Ч��|aura_effect_notable1557-Ӱ�|life1415-����|life_life_leech1629-��Ѫ��|life_energy_shield1675-�����������o��|fitness1160-Ѫ��|chaos_physical_damage2118-�����c�������|chaos_damage2108_-������m�����ӳ�|chaos_damage2110-������m�����ӳ�|chaos_damage2109-������m�����ӳ�|chaos_damage2111-ή�s|dexterity984-����|strength821-����|dexterity853-����|bow_mobility2507-���Ă���|bow_damage_move_speed1710-���Ă������W��|bow_damage_move_speed1709-���Ă������W��|bow_damage_speed_notable1711-���C֮��|dexterity850-����|dexterity1988-����|dexterity849-����|dexterity847-����|reflexes706-�W�ܺͷ��g����|reflexes1091-����|deaden_keystone2849-���g�Ķ�|sentinel1541-�ڱ�|mastery_life135-��������-64381|mastery_life128-��������-47642|strength789-����|strength773-����|life1164-����|life_notable1697-����|life1116-�W�ܺ�����|life1115-�W�ܺ�����|life1117-����ͨ��|mastery_bow36-������-45512|attack_channel_charge2394-���g����|attack_channel_charge2393-���g����|attack_channel_charge2395-���g����|attack_channel_charge_notable2396-����ٹ�|dual_wield_damage2125-�Ƅ��ٶȺͷ��g����|attack_move_speed_notable1792-����|dual_wield_damage726-�Ƅ��ٶȺͷ��g����|evasion_per_frenzy_charge535-ÿ�w��ŭ���W��|maximum_frenzy_charges525-����|")
SetNeedAddTianFu("��������=AscendancyRaider5-�W�ܡ��͹�Ч��|AscendancyRaider6-�O���M��|AscendancyRaider7-�W�ܡ��͹�Ч��|AscendancyRaider8-׷�Cʹͽ|AscendancyRaider3-�W�ܡ���ŭ����m�r�g|AscendancyRaider2-�I�C��֮;|") 
SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_path_11-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_boss_adjacent_maps_8-�����؈D����C��|atlas_path_38-�����؈D����C��|atlas_path_21-�����؈D����C��|atlas_path_27-�����؈D����C��|atlas_path_28-�����؈D����C��|atlas_map_drops_20-�����}�u�؈D|atlas_map_drops_2-�����}�u�؈D|atlas_map_drops_4-�����}�u�؈D|atlas_map_drops_8-�����}�u�؈D|atlas_path_92-�����}�u�؈D|atlas_path_61-��Ʒ����|atlas_path_44-��Ʒ����|atlas_path_35-��Ʒ����|atlas_path_90-�����}�u�؈D|atlas_keystone_smallnodes_1-����֮·|atlas_path_22-�����؈D����C��|atlas_path_13-�����؈D����C��|atlas_path_8-�����؈D����C��|atlas_path_9-�����؈D����C��|atlas_path_37-�����؈D����C��|atlas_path_30-�����؈D����C��|atlas_path_18-�����؈D����C��|atlas_path_15-�����؈D����C��|atlas_path_2-�����؈D����C��|atlas_path_17-�����؈D����C��|atlas_map_drops_1-�����}�u�؈D|atlas_map_drops_16-�����}�u�؈D|atlas_map_drops_15-�����}�u�؈D|atlas_map_drops_9-�����}�u�؈D|atlas_path_95-�����}�u�؈D|atlas_path_96-�����}�u�؈D|atlas_path_94-�����}�u�؈D|atlas_map_tier_5_1-���A�؈D�C��|atlas_map_tier_3_1-���A�؈D�C��|atlas_map_tier_3_2-���A�؈D�C��|atlas_map_tier_5_2-���A�؈D�C��|atlas_map_tier_4_1-���A�؈D�C��|atlas_path_82-�����}�u�؈D|atlas_map_drops_14-�����}�u�؈D|atlas_path_85-�����}�u�؈D|atlas_path_14-�����؈D����C��|atlas_path_26-�����؈D����C��|atlas_path_83-�����}�u�؈D|atlas_map_drops_5-�����}�u�؈D|atlas_path_84-�����}�u�؈D|atlas_map_drops_3-�����}�u�؈D|atlas_map_drops_17_-�����}�u�؈D|atlas_path_3-�����؈D����C��|atlas_path_29-�����؈D����C��|atlas_path_89-�����}�u�؈D|atlas_map_drops_18-�����}�u�؈D|atlas_path_86-�����}�u�؈D|atlas_map_drops_21-�����}�u�؈D|atlas_map_tier_1_2_-���A�؈D�C��|atlas_map_tier_1_1-���A�؈D�C��|atlas_map_tier_2_1-���A�؈D�C��|atlas_map_tier_2_2-���A�؈D�C��|atlas_map_drops_10-�����}�u�؈D|atlas_map_drops_11-�����}�u�؈D|atlas_path_4-�����؈D����C��|atlas_path_7-�����؈D����C��|atlas_path_88-�����}�u�؈D|atlas_map_drops_12_-�����}�u�؈D|atlas_path_87-�����}�u�؈D|atlas_map_drops_13-�����}�u�؈D|")

g_openQlkMaxMapTianFuCnt=nil--��ֵ�� �������츳�󲻿�����������nilΪһֱ��
g_useMinLvMapTianFuCnt=70--��ͼ�츳�����ٵ�� �ʹӵͽ׵�ͼ��ʼȡ
SetYiJieShuaTuModeByMapCnt(60,nil,2)--)--���ݲֿ���ĵ�ͼ�����������ˢͼģʽ ����Ӷ�� ���Ǵӵ�ͼ�����ൽ�����жϵ�
SetOpenMapMasterData(3)

--SetNeedAddTianFu(tfStr)--�����츳�ӵ� 
--SetNeedAddTianFu("����=attack_speed568-Ͷ�������������|dexterity990-����|dexterity992-����|dexterity995-����|intelligence957-�ǻ�|aura_area_of_effect1203-��hЧ������|reduced_mana_reservation1199-����Ч��|aura_effect_reservation_cost_notable1558-����|dexterity989-����|dexterity872-����|weapon_elemental_damage1263-����Ԫ�؂���|weapon_elemental_damage1264-����Ԫ�؂���|weapon_ele_notable1700-��Ȼ֮��|life1119-�W�ܺ�����|life1118-�W�ܺ�����|life1117-����ͨ��|mastery_life130-�W�܌���-57074|dexterity976-����|attack_damage_notable2120-ɽ؈֮�`|dexterity969-����|dexterity870-����|claws_of_the_pride489-ֱ�X|one_handed_damage637-����Ԫ�؂���|shield_mastery440-��Ȼ��һ|one_handed_damage636-����Ԫ�؂���|finesse993-����|stun_recovery543-�����ͱ��╞ѣ|avoid_stun553-��ľ֮��|reduced_mana1480-ħ����ˎ��Ч��|mana1478-ԭʼ����|life1412-����|alchemist532-ˎ�݌W|life1216-����|dexterity862-����|dexterity864-����|accuracy582-�����c�����ٶ�|accuracy589-���к͹����ٶ�|deadeye590-����|mastery_accuracy3-���Ќ���-51147|evasion_per_frenzy_charge535-ÿ�w��ŭ���W��|maximum_frenzy_charges525-����|dexterity1986-����|jewel_slot1960-���A�錚���|critical_strike_chance625-������|critical_strike_chance624-������|heartseeker626-������|dexterity861-����|weapon_elemental_damage2163-����Ԫ�؂���|weapon_elemental_damage2161-����Ԫ�؂�����������B�C��|weapon_elemental_damage2162-����Ԫ�؂�����������B�C��|weapon_elemental_damage_notable2165-̫��֮��|dexterity873-����|dexterity858-����|dexterity968-����|weapon_cold_damage212-�����������|weapon_cold_damage211-�����������|ice_bite433-�̹Ǻ���|dexterity877-����|savant937-ԭҰ�ǻ�|dexterity875-����|mana_leech2046-�����cħ��͵ȡ|life_leech2055-����͵ȡ|life_leech_notable2056-����̓��|mana_leech2047-ħ��͵ȡ|mana_leech_notable2048-���A��ȡ|dexterity835-����|axe_damage_accuracy_crit2473-���Ă���|axe_damage_accuracy_crit2472-���Ă���������|axe_damage_accuracy_crit_notable2476-�_��֮��|dexterity844-����|dexterity840-����|mana_on_kill1476-ħ���͹�h����Ч��|mana_on_kill_notable1704-��g|mastery_mana171-ħ������-12119|dexterity838-����|dexterity1990_-����|maximum_frenzy_charges527-Ұ��֮��|jewel_slot1975-���A�錚���|strength1005-����|iron_reflexes1137-���w|life1213-����|golem's_blood1088-ħ��Ѫ�y |armour_and_evasion1454-�o�׺��W��|leather_and_steel1458-ѸӰ���g|strength832-����|strength802-����|strength794-����|strikes_damage2731_-��������|strikes_range2732-���������ʹ������|strikes_range2733-���������ʹ������|blight_special_notable6-����֮ŭ|mastery_attack17-���􌣾�-39154|strength778-����|savant954-�o��|aura_effect1555-��hЧ��|aura_area_of_effect1202-��hЧ������|general_aura_notable1791-��Դ|aura_banner2426-����Ч��|strength793-����|call_to_arms_keystone2691-���b�ن�|axe_damage_accuracy_crit2475-���Ă����ͱ�����|axe_damage_accuracy_crit2474-���Ă����ͱ�����|mastery_leech159-͵ȡ����-53627|axe_damage_and_speed2466_-���Ă����͹����ٶ�|axe_damage_and_attack_speed1082-���Ă����͹����ٶ�|axe_damage_and_attack_speed518-���Ă����͹����ٶ�|hatchet_master104-�����ڎ�|melee_crit2381-���𱩓���|melee_crit2382-���𱩓��ӳ�|melee_crit_notable2384-֫��|mastery_criticals64-���􌣾�-2987|frenzy_charges2419-ÿ�w��ŭ���W��|frenzy_charges2418-�Ƅ��ٶ�|frenzy_charges2420-ÿ�w��ŭ�򹥓��ٶ�|frenzy_charges_notable2421-������֮ʹͽ|mastery_charges50-���܌���-40307|mastery_life146-��������-47642|mastery_life138-��������-64381|")
--SetNeedAddTianFu("��������=AscendancyRaider5-�W�ܡ��͹�Ч��|AscendancyRaider6-�O���M��|AscendancyRaider3-�W�ܡ���ŭ����m�r�g|AscendancyRaider2-�I�C��֮;|AscendancyRaider1-�W�ܡ���ŭ����m�r�g|AscendancyRaider4-��¾ʹͽ|") 
--SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_path_11-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_boss_adjacent_maps_8-�����؈D����C��|atlas_path_38-�����؈D����C��|atlas_path_21-�����؈D����C��|atlas_path_27-�����؈D����C��|atlas_path_28-�����؈D����C��|atlas_map_drops_20-�����}�u�؈D|atlas_map_drops_2-�����}�u�؈D|atlas_map_drops_4-�����}�u�؈D|atlas_map_drops_8-�����}�u�؈D|atlas_path_92-�����}�u�؈D|atlas_path_61-��Ʒ����|atlas_path_44-��Ʒ����|atlas_path_35-��Ʒ����|atlas_path_90-�����}�u�؈D|atlas_keystone_smallnodes_1-����֮·|atlas_path_22-�����؈D����C��|atlas_path_13-�����؈D����C��|atlas_path_8-�����؈D����C��|atlas_path_9-�����؈D����C��|atlas_path_37-�����؈D����C��|atlas_path_30-�����؈D����C��|atlas_path_18-�����؈D����C��|atlas_path_15-�����؈D����C��|atlas_path_2-�����؈D����C��|atlas_path_17-�����؈D����C��|atlas_map_drops_1-�����}�u�؈D|atlas_map_drops_16-�����}�u�؈D|atlas_map_drops_15-�����}�u�؈D|atlas_map_drops_9-�����}�u�؈D|atlas_path_95-�����}�u�؈D|atlas_path_96-�����}�u�؈D|atlas_path_94-�����}�u�؈D|atlas_map_tier_5_1-���A�؈D�C��|atlas_map_tier_3_1-���A�؈D�C��|atlas_map_tier_3_2-���A�؈D�C��|atlas_map_tier_5_2-���A�؈D�C��|atlas_map_tier_4_1-���A�؈D�C��|atlas_path_82-�����}�u�؈D|atlas_map_drops_14-�����}�u�؈D|atlas_path_85-�����}�u�؈D|atlas_path_14-�����؈D����C��|atlas_path_26-�����؈D����C��|atlas_path_83-�����}�u�؈D|atlas_map_drops_5-�����}�u�؈D|atlas_path_84-�����}�u�؈D|atlas_map_drops_3-�����}�u�؈D|atlas_map_drops_17_-�����}�u�؈D|atlas_path_3-�����؈D����C��|atlas_path_29-�����؈D����C��|atlas_path_89-�����}�u�؈D|atlas_map_drops_18-�����}�u�؈D|atlas_path_86-�����}�u�؈D|atlas_map_drops_21-�����}�u�؈D|atlas_map_tier_1_2_-���A�؈D�C��|atlas_map_tier_1_1-���A�؈D�C��|atlas_map_tier_2_1-���A�؈D�C��|atlas_map_tier_2_2-���A�؈D�C��|atlas_map_drops_10-�����}�u�؈D|atlas_map_drops_11-�����}�u�؈D|atlas_path_4-�����؈D����C��|atlas_path_7-�����؈D����C��|atlas_path_88-�����}�u�؈D|atlas_map_drops_12_-�����}�u�؈D|atlas_path_87-�����}�u�؈D|atlas_map_drops_13-�����}�u�؈D|")
g_yiJieLv=72				--���˶��ټ���ȥˢ���
g_checkSellMapCnt=60		--��ͼ������������Ż�����۵�ͼ
g_destroyNoUseMap=true		--�����������ò�ʹ�õĵ�ͼ nil��falseΪ������
g_mapUseFuHaoLv=76			--���ڵ��ڶ��ټ�����ͼʹ�ø���ʯ nilΪ��Զ��ʹ��
g_mapUseZengFuLv=nil			--���ڵ��ڶ��ټ�����ͼʹ������ʯ nilΪ��Զ��ʹ��
g_mapUseDianJingLv=76		--���ڵ��ڶ��ټ��԰�ͼʹ�õ��ʯ nilΪ��Զ��ʹ��
g_mapUseTuiBianLv=72		--���ڵ��ڶ��ټ��԰�ͼʹ���ɱ�ʯ nilΪ��Զ��ʹ��
g_mapUseJiHuiLv=nil			--���ڵ��ڶ��ټ��԰�ͼʹ�û���ʯ nilΪ��Զ��ʹ��
g_mapUseWaErLv=83			--���ڵ��ڶ��ټ��԰ס�����ͼʹ���߶����� nilΪ��Զ��ʹ��
g_mapUseDingZiLv=nil			--���ڵ��ڶ��ټ�ʹ����ͼ�� nilΪ��Զ��ʹ��
g_noUseMapLv=0				--��ʹ�á�������ٽ׼����ϵĵ�ͼ nil��0Ϊ���� �������ȵĵ�ͼ����

g_mapUseOrangeMap=false		--trueΪʹ�ó�ͼ nil��falseΪ��ʹ��
SetCheckHeistData(5*60,100000,nil,99,false,65,73,78,65,true,6) --����ȥ�ᱦ 

g_yongHengShiBeiLv=90		--���ڵ��ڶ��ټ�������ʯ�� 
g_needTaFangLv=95			--���ڵ��ڶ��ټ�������
g_needLianMoLv=90			--���ڵ��ڶ��ټ�����ħ
g_attackFreezeMonsterLv=90	--���ڵ��ڶ��ټ��������
g_needChuanYueLv=90      	--���ڵ��ڶ��ټ���Խ��
g_needLieXiLv=90			--��춵��ڶ��ټ���ʱ���ѷ��
g_needMiWuLv=90				--���ڵ��ڶ��ټ�������

g_needZaFenLv=90           --���ö��ټ���ʼ��������ը���淨
g_needMengYanLv=90          --70���Ժ�͵�����
g_needSuDiLv=90             --��75����ǿϮ�޵�����