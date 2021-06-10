<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2" />
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="663923713">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2168330243">
        <_items dataType="Array" type="Duality.GameObject[]" id="4147981606" length="4">
          <item dataType="Struct" type="Duality.GameObject" id="4013893307">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3758841995">
              <_items dataType="Array" type="Duality.Component[]" id="3181753974" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="4071170525">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <gameobj dataType="ObjectRef">4013893307</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">717.1138</X>
                    <Y dataType="Float">711.6815</Y>
                    <Z dataType="Float">0</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">717.1138</X>
                    <Y dataType="Float">711.6815</Y>
                    <Z dataType="Float">0</Z>
                  </posAbs>
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3219538744">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">4013893307</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="3375593588" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="1489876900">H4sIAAAAAAAEAFNgYGAQAeJaBjAYpYYFVQih4iHUzsFO+UIoa6L9VwChdgwtyopo/51C0RcHobYPPsoHxZ3LyPQf8froTZHrzlH/DQ5q1H+j/hv136j/6OM/VjL1xUIoChtRzbTznxiEYiFa3xQIRdVGBi1SwSnaGT0oHDGY/EedVI5KeQ8G/1E1sWOlmgbUf6MUHSgAkgbCjogRAAA=</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Graphics\Track\kenney tiles.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="592959105">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">4013893307</gameobj>
                  <offset dataType="Float">1</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="Flat" value="0" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1913633992" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2123569185">
                  <item dataType="Type" id="4148951662" value="Duality.Plugins.Tilemaps.Tilemap" />
                  <item dataType="Type" id="3779319754" value="Duality.Components.Transform" />
                  <item dataType="Type" id="1724560990" value="Duality.Plugins.Tilemaps.TilemapRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="1295430944">
                  <item dataType="ObjectRef">3219538744</item>
                  <item dataType="ObjectRef">4071170525</item>
                  <item dataType="ObjectRef">592959105</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">4071170525</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="623910323">C4kMXJ5s9EGN4sTAtXr/dw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Road</name>
            <parent dataType="ObjectRef">663923713</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">1</_size>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1418396600">
        <_items dataType="Array" type="Duality.Component[]" id="1218422633" length="0" />
        <_size dataType="Int">0</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="631581993" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1301156308" length="0" />
          <values dataType="Array" type="System.Object[]" id="2402186166" length="0" />
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2071223536">0bHPEqjTuE+vza8E//nnRg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Map</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1576504656">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="3586934262">
        <_items dataType="Array" type="Duality.GameObject[]" id="215830240" length="4" />
        <_size dataType="Int">0</_size>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="80292890">
        <_items dataType="Array" type="Duality.Component[]" id="2235759812" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1633781874">
            <active dataType="Bool">true</active>
            <angle dataType="Float">1.57079637</angle>
            <angleAbs dataType="Float">1.57079637</angleAbs>
            <gameobj dataType="ObjectRef">1576504656</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">-10</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">-10</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1111434144">
            <active dataType="Bool">false</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1576504656</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">1</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1900958120">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="380878508" length="4">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="629696228">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1111434144</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">128</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
            <useCCD dataType="Bool">true</useCCD>
          </item>
          <item dataType="Struct" type="Soulstone.Duality.Plugins.MiniRacing.Cars.Car" id="3516581728">
            <_x003C_Forwards_x003E_k__BackingField dataType="Bool">false</_x003C_Forwards_x003E_k__BackingField>
            <_x003C_Reverse_x003E_k__BackingField dataType="Bool">false</_x003C_Reverse_x003E_k__BackingField>
            <_x003C_Specifications_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Soulstone.Duality.Plugins.MiniRacing.Cars.CarSpecification]]">
              <contentPath dataType="String">Data\Specs.CarSpecification.res</contentPath>
            </_x003C_Specifications_x003E_k__BackingField>
            <_x003C_TurnLeft_x003E_k__BackingField dataType="Bool">false</_x003C_TurnLeft_x003E_k__BackingField>
            <_x003C_TurnRight_x003E_k__BackingField dataType="Bool">false</_x003C_TurnRight_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1576504656</gameobj>
          </item>
          <item dataType="Struct" type="Soulstone.Duality.Plugins.MiniRacing.Cars.CarController" id="302353292">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1576504656</gameobj>
          </item>
          <item dataType="Struct" type="Soulstone.Duality.Plugins.MiniRacing.Physics.Solid" id="2857742197">
            <_debugColors dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Drawing.ColorRgba]]" id="778447193">
              <_items dataType="Array" type="Duality.Drawing.ColorRgba[]" id="2867459022" length="0" />
              <_size dataType="Int">0</_size>
            </_debugColors>
            <_debugOffsets dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Vector2]]" id="3494524928">
              <_items dataType="Array" type="Duality.Vector2[]" id="1394563955" length="0" />
              <_size dataType="Int">0</_size>
            </_debugOffsets>
            <_debugVectors dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Vector2]]" id="920749851">
              <_items dataType="ObjectRef">1394563955</_items>
              <_size dataType="Int">0</_size>
            </_debugVectors>
            <_x003C_AngularVelocity_x003E_k__BackingField dataType="Float">0</_x003C_AngularVelocity_x003E_k__BackingField>
            <_x003C_Inertia_x003E_k__BackingField dataType="Float">0</_x003C_Inertia_x003E_k__BackingField>
            <_x003C_LinearVelocity_x003E_k__BackingField dataType="Struct" type="Duality.Vector2" />
            <_x003C_Mass_x003E_k__BackingField dataType="Float">0</_x003C_Mass_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1576504656</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3045123936">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">1576504656</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">146</H>
              <W dataType="Float">54</W>
              <X dataType="Float">-27</X>
              <Y dataType="Float">-74.7</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Graphics\Cars\Phantom.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
        </_items>
        <_size dataType="Int">6</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="295204630" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1373236672">
            <item dataType="ObjectRef">3779319754</item>
            <item dataType="Type" id="4247169820" value="Duality.Components.Renderers.SpriteRenderer" />
            <item dataType="Type" id="2509659670" value="Duality.Components.Physics.RigidBody" />
            <item dataType="Type" id="2426132616" value="Soulstone.Duality.Plugins.MiniRacing.Cars.Car" />
            <item dataType="Type" id="1524640690" value="Soulstone.Duality.Plugins.MiniRacing.Cars.CarController" />
            <item dataType="Type" id="3992971700" value="Soulstone.Duality.Plugins.MiniRacing.Physics.Solid" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2606130254">
            <item dataType="ObjectRef">1633781874</item>
            <item dataType="ObjectRef">3045123936</item>
            <item dataType="ObjectRef">1111434144</item>
            <item dataType="ObjectRef">3516581728</item>
            <item dataType="ObjectRef">302353292</item>
            <item dataType="ObjectRef">2857742197</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1633781874</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1386654044">V4SOouz0nkGKoN0rCQv9iw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Phantom</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1595854172">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3980196914">
        <_items dataType="Array" type="Duality.Component[]" id="3512041936" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1653131390">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">1595854172</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-1000</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-1000</Z>
            </posAbs>
            <scale dataType="Float">1.66666663</scale>
            <scaleAbs dataType="Float">1.66666663</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="3142240649">
            <active dataType="Bool">true</active>
            <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">1595854172</gameobj>
            <nearZ dataType="Float">50</nearZ>
            <priority dataType="Int">0</priority>
            <projection dataType="Enum" type="Duality.Drawing.ProjectionMode" name="Perspective" value="1" />
            <renderSetup dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderSetup]]" />
            <renderTarget dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
            <shaderParameters dataType="Struct" type="Duality.Drawing.ShaderParameterCollection" id="1738332109" custom="true">
              <body />
            </shaderParameters>
            <targetRect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">1</H>
              <W dataType="Float">1</W>
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </targetRect>
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
          <item dataType="Struct" type="Soulstone.Duality.Plugins.MiniRacing.Misc.CameraController" id="3663240318">
            <_x003C_ApplyAngle_x003E_k__BackingField dataType="Bool">false</_x003C_ApplyAngle_x003E_k__BackingField>
            <_x003C_Target_x003E_k__BackingField dataType="ObjectRef">1576504656</_x003C_Target_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1595854172</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2814096714" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="777175848">
            <item dataType="ObjectRef">3779319754</item>
            <item dataType="Type" id="4131364780" value="Duality.Components.Camera" />
            <item dataType="Type" id="838126518" value="Soulstone.Duality.Plugins.MiniRacing.Misc.CameraController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3758370974">
            <item dataType="ObjectRef">1653131390</item>
            <item dataType="ObjectRef">3142240649</item>
            <item dataType="ObjectRef">3663240318</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1653131390</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1392519188">uDjpKZDAI0aX7UZOawu6EQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Camera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1648729970">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3810271900">
        <_items dataType="Array" type="Duality.Component[]" id="3812006852" length="4">
          <item dataType="Struct" type="Soulstone.Duality.Plugins.MiniRacing.Cars.CarSystem" id="1383487937">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1648729970</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2505781782" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="575709238">
            <item dataType="Type" id="319183200" value="Soulstone.Duality.Plugins.MiniRacing.Cars.CarSystem" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2360275098">
            <item dataType="ObjectRef">1383487937</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3847029974">eLWgh8dy6EuBWeZIhzwhhg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">CarSystem</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">4013893307</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
