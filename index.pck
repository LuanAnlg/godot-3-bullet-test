GDPC                                                                                   res://Control.gd.remap  `      "       ӼM���I\s�$��nd   res://Control.gdc   �            <U��h��>�R@%\��   res://FallingObject.tscn       M      ��=��+ۚv��E�   res://Spatial.gd.remap  �      "       F�m]������栲�g�   res://Spatial.gdc   P      �      /��k��Z��/��   res://Spatial.tscn  @            �OswF���ԙ]`�h   res://project.binary�      �      -}H9��Ǵޘ4�^:�Q    GDSC            h      ������ڶ   ����������¶   �����������Ҷ���   ��������ڶ��   �������ڶ���   ������������ڶ��   �����������ڶ���   �������Ŷ���   ����׶��   ��Ŷ   ���¶���   ������������Ŷ��   ���������¶�   ��������������¶                         �?   	   FPS: %.2f         Total de objetos: %d                               	                           	      
         &      *      .      /      0      6      =      E      I      M      N      O      Z      f      3YYY;�  Y;�  �  YYY5;�  W�  Y5;�  W�  YY0�  P�  QV�  �  �  �  �  �  Y�  �  &�  �  V�  ;�	  �  �  �  �  T�
  �  �	  �  �  �  �  �  Y�  �  ;�  �  PQT�  PQ�  �  T�
  �  P�  �  QY`            [gd_scene load_steps=4 format=2]

[sub_resource type="SpatialMaterial" id=3]
emission_enabled = true
emission = Color( 1, 0, 0, 1 )
emission_energy = 1.0
emission_operator = 0
emission_on_uv2 = false

[sub_resource type="CubeMesh" id=1]
material = SubResource( 3 )
size = Vector3( 0.5, 0.5, 0.5 )

[sub_resource type="BoxShape" id=2]
extents = Vector3( 0.25, 0.25, 0.25 )

[node name="FallingObject" type="RigidBody"]

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 2 )
   GDSC            �      ������ڶ   ����������Ӷ   �������������������Ӷ���   �������������ڶ�   ����������������ض��   ������������Ŷ��   ���������������Ҷ���   ����Ķ��   ����Ķ��   �����϶�   ��������Ӷ��   ����¶��   ����������������¶��   �����Ӷ�   ��������������������Ҷ��   ���ƶ���   �߶�   �������Ӷ���   ����������ض   ��������Ҷ��         
                                                
                        "      '   	   (   
   2      3      9      ?      E      F      G      M      Q      R      \      `      f      h      i      r      {      �      �      �      3YY8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  �  YY;�  �  Y;�  �  YY5;�  VW�  <�  YY0�	  PQV�  �  T�
  �  �  �  T�  PQYYY0�  PQV�  &�  V�  �  &�  T�  PQ	�  V�  �  �  �  �  T�  PQ�  .Y�  )�  �K  P�  QV�  ;�  �  T�  PQ�  �  T�  �  P�'  PQ�  �  R�  R�'  PQ�  �  Q�  �  P�  Q�  �  Y`              [gd_scene load_steps=7 format=2]

[ext_resource path="res://Spatial.gd" type="Script" id=1]
[ext_resource path="res://FallingObject.tscn" type="PackedScene" id=2]
[ext_resource path="res://Control.gd" type="Script" id=3]

[sub_resource type="SpatialMaterial" id=1]
emission_enabled = true
emission = Color( 0, 1, 0.929412, 1 )
emission_energy = 1.0
emission_operator = 0
emission_on_uv2 = false

[sub_resource type="PlaneMesh" id=2]
material = SubResource( 1 )
size = Vector2( 30, 30 )

[sub_resource type="BoxShape" id=3]
extents = Vector3( 15, 1, 15 )

[node name="Spatial" type="Spatial"]
script = ExtResource( 1 )
falling_object_scene = ExtResource( 2 )

[node name="Camera" type="Camera" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 5, 20 )

[node name="Timer" type="Timer" parent="."]

[node name="StaticBody" type="StaticBody" parent="."]

[node name="MeshInstance" type="MeshInstance" parent="StaticBody"]
mesh = SubResource( 2 )
skeleton = NodePath("../..")

[node name="CollisionShape" type="CollisionShape" parent="StaticBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -1, 0 )
shape = SubResource( 3 )

[node name="Control" type="Control" parent="."]
margin_right = 1024.0
margin_bottom = 600.0
script = ExtResource( 3 )

[node name="FPSLabel" type="Label" parent="Control"]
margin_right = 40.0
margin_bottom = 14.0

[node name="ObjectsLabel" type="Label" parent="Control"]
margin_top = 14.0
margin_right = 40.0
margin_bottom = 28.0

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
              [remap]

path="res://Control.gdc"
              [remap]

path="res://Spatial.gdc"
              ECFG	      application/config/name         bullet test    application/run/main_scene         res://Spatial.tscn  .   debug/gdscript/warnings/unsafe_property_access         ,   debug/gdscript/warnings/unsafe_method_access            filesystem/import/fbx/use_fbx          )   physics/common/enable_pause_aware_picking            physics/3d/physics_engine         Bullet     physics/3d/active_soft_world          $   rendering/quality/driver/driver_name         GLES2                 