<?php

use app\components\arrangement\TerritoryConcept;
use app\facades\TerritoryFacade;
use app\models\forms\AnalyticModel;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var app\models\forms\demo\GenerateByParamsForm $model */
/** @var app\models\forms\AnalyticModel $modelAnal */
/** @var string $data */

?>

<div class="object-work-form">

    <div class="sticky-block">
        <div><h4>Добро пожаловать в генератор расстановок МАФ!</h4></div>
        <div>🛠️ <b>Для создания расстановки:</b> установите необходимые параметры в поле генератора и нажмите зеленую кнопку "Сгенерировать"</div>
        <div>🔄 <b>Для поворота сцены:</b> зажмите ЛКМ и смахните в нужную сторону</div>
        <div>🔍 <b>Для приближения/отдаления:</b> прокрутите колесико мыши</div>
        <div>⚠️ <b>Обратите внимание:</b> выгрузка расстановок доступна только в XML формате и не содержит аналитику рассчетов стоимости и установки</div>
    </div>

    <?php $form = ActiveForm::begin(['id' => 'generate-form']); ?>

    <div class="row-block" style="display: flex; justify-content: space-between;">

        <div class="float-counter">
            <label class="row-label">Приоритет рекреационных МАФ</label>
            <?= $form->field($model, 'recreation', ['options' => ['style' => 'margin-bottom: 5px; margin-top: 10px']])
                ->textInput(['type' => 'range', 'step' => 0.1, 'min' => 0.1, 'max' => 0.9, 'value' => $model->recreation == 0 ? 0.1 : $model->recreation, 'data-index' => 1])
                ->label(false)
            ?>
            <div style="text-align: center; max-width: 100%">
                <span id="rangeValue1"><?= $model->recreation == 0 ? 0.1 : $model->recreation ?></span>
            </div>
        </div>
        <div class="float-counter">
            <label class="row-label">Приоритет спортивных МАФ</label>
            <?= $form->field($model, 'sport', ['options' => ['style' => 'margin-bottom: 5px; margin-top: 10px']])
                ->textInput(['type' => 'range', 'step' => 0.1, 'min' => 0.1, 'max' => 0.9, 'value' => $model->sport == 0 ? 0.1 : $model->sport, 'data-index' => 2])
                ->label(false)
            ?>
            <div style="text-align: center; max-width: 100%">
                <span id="rangeValue2"><?= $model->sport == 0 ? 0.1 : $model->sport ?></span>
            </div>
        </div>
        <div class="float-counter">
            <label class="row-label">Приоритет развивающих МАФ</label>
            <?= $form->field($model, 'education', ['options' => ['style' => 'margin-bottom: 5px; margin-top: 10px']])
                ->textInput(['type' => 'range', 'step' => 0.1, 'min' => 0.1, 'max' => 0.9, 'value' => $model->education == 0 ? 0.1 : $model->education, 'data-index' => 3])
                ->label(false)
            ?>
            <div style="text-align: center; max-width: 100%">
                <span id="rangeValue3"><?= $model->education == 0 ? 0.1 : $model->education ?></span>
            </div>
        </div>
        <div class="float-counter">
            <label class="row-label">Приоритет игровых МАФ</label>
            <?= $form->field($model, 'game', ['options' => ['style' => 'margin-bottom: 5px; margin-top: 10px']])
                ->textInput(['type' => 'range', 'step' => 0.1, 'min' => 0.1, 'max' => 0.9, 'value' => $model->game == 0 ? 0.1 : $model->game, 'data-index' => 4])
                ->label(false)
            ?>
            <div style="text-align: center; max-width: 100%">
                <span id="rangeValue4"><?= $model->game == 0 ? 0.1 : $model->game ?></span>
            </div>
        </div>
    </div>

    <div class="row-block" style="border-radius: 0; margin-top: 0">
        <div class="float-counter">
            <label class="row-label">Тип генерации</label>
            <?= $form->field($model, 'addGenerateType')->dropDownList([
                TerritoryFacade::OPTIONS_DEFAULT => 'Стандартная генерация',
                TerritoryFacade::OPTIONS_BUDGET_ECONOMY => 'Эконом-генерация',
            ])->label(false) ?>
        </div>

        <div class="float-counter">
            <label class="row-label">Уровень наполненности</label>
            <?= $form->field($model, 'fullness')->dropDownList([
                TerritoryConcept::TYPE_FULLNESS_MIN => 'Минимальный',
                TerritoryConcept::TYPE_FULLNESS_MID => 'Средний',
                TerritoryConcept::TYPE_FULLNESS_MAX => 'Максимальный',
            ])->label(false) ?>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton('Сгенерировать', ['class' => 'btn btn-success', 'style' => 'width: 100%;']) ?>
    </div>

    <?php ActiveForm::end(); ?>

    <?php if ($modelAnal): ?>
        <?= $this->render('/analytic-block', [
            'model' => $modelAnal,
        ]) ?>
    <?php endif; ?>

    <div id="scene-container"></div>
    <div id="anal-block"></div>

</div>


<style>
    #scene-container {
        height: 600px;
    }
    #scene-container canvas {
        border-radius: 15px;
    }

    .row-label {
        margin-bottom: 5px;
    }

    .row-block {
        margin-top: 25px;
        margin-bottom: -5px;
        padding: 10px;
        background-color: whitesmoke;
        border-radius: 10px 10px 0 0;
        padding-left: 30px;
        padding-right: 30px;
    }

    .row-block:before {
        display: none;
        content: "";
    }

    .row-block:after {
        display: none;
        content: "";
    }

    .float-counter {
        margin-bottom: 10px;
    }
    .sticky-block {
        padding: 30px;
        background-color: white;
        border-radius: 15px;
        margin: 10px 0 10px 0;
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const rangeInputs = document.querySelectorAll('input[type="range"]');

        rangeInputs.forEach(function(input) {
            input.addEventListener('input', function() {
                const value = this.value;
                const spanId = 'rangeValue' + this.dataset.index;
                const span = document.getElementById(spanId);

                if (span) {
                    span.textContent = value;
                }
            });
        });
    });
</script>

<script src="https://cdn.jsdelivr.net/npm/three@0.130.1/build/three.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.130.1/examples/js/loaders/GLTFLoader.js"></script>
<script>
    // Создание сцены
    const scene = new THREE.Scene();
    scene.background = new THREE.Color('#F0F8FF');
    const sceneContainer = document.getElementById('scene-container');

    const camera = new THREE.PerspectiveCamera( 75, sceneContainer.clientWidth / sceneContainer.clientHeight, 1, 1000 );
    camera.position.z = 10;
    camera.position.y = -5;
    camera.rotation.x = 0.5;

    const renderer = new THREE.WebGLRenderer();
    renderer.setSize(sceneContainer.clientWidth, sceneContainer.clientHeight);
    sceneContainer.appendChild(renderer.domElement);

    //-----------------------------------------------

    // Объявляем переменные для сетки
    const drift = 0.5;
    var gridSizeX = 10, gridSizeY = 10, gridSizeZ = 10;
    var normalGridSizeZ = 10;
    var gridGeometry = new THREE.PlaneBufferGeometry(1, 1);
    var gridMesh = new THREE.Group();

    // Объявляем переменные для отслеживания поворота камеры
    var isRotateCamera = false;
    var degreeCamera = 0;
    var previousMouseX = 0;

    var objectsToRemove = [];

    //----------------------------------------------

    for (let i = 0; i < gridSizeX * gridSizeY; i++) {
        var cellGeometry = new THREE.BoxBufferGeometry(1, 1, 0.01);
        var cellMaterial = new THREE.MeshBasicMaterial({ color: '#000000', transparent: true, opacity: 0.5, side: THREE.DoubleSide }); // Один цвет и полупрозрачность
        var cell = new THREE.Mesh(cellGeometry, cellMaterial);
        cell.position.set(i % gridSizeX - gridSizeX / 2, Math.floor(i / gridSizeX) - gridSizeY / 2, 0);
        objectsToRemove.push(cell);
        scene.add(cell);
    }

    // Основные механики
    //--------------------------------

    // Инициализация объектов на сцене
    function init(date) {
        var dateObj = JSON.parse(date);

        // Создаем сцену
        gridSizeX = dateObj.result.matrixCount.width + 1;
        gridSizeY = dateObj.result.matrixCount.height + 1;
        gridSizeZ = dateObj.result.matrixCount.maxHeight + 10;

        var gridColor = new THREE.Color('#808080'); // Серый цвет

        var edgesMaterial = new THREE.LineBasicMaterial({ color: 0x000000 }); // Черный цвет для границ
        var driftCellX = gridSizeX % 2 == 0 ? 0 : drift;
        var driftCellY = gridSizeY % 2 == 0 ? 0 : drift;

        // Отрисовка сцены
        for (let i = 0; i < gridSizeX * gridSizeY; i++) {
            var cellGeometry = new THREE.BoxBufferGeometry(1, 1, 0.01);
            var cellMaterial = new THREE.MeshBasicMaterial({ color: gridColor, transparent: true, opacity: 0.5, side: THREE.DoubleSide }); // Один цвет и полупрозрачность
            var cell = new THREE.Mesh(cellGeometry, cellMaterial);
            var edges = new THREE.LineSegments(new THREE.EdgesGeometry(cellGeometry), edgesMaterial);
            cell.position.set(i % gridSizeX - gridSizeX / 2 + driftCellX, Math.floor(i / gridSizeX) - gridSizeY / 2 + driftCellY, 0);
            gridMesh.add(cell);
            cell.add(edges); // Добавляем границы к ячейке
            objectsToRemove.push(cell);
        }

        scene.add(gridMesh);
        camera.position.set(0, -(gridSizeY / 2), gridSizeZ);

        // Создаем загрузчик для добавления моделей
        const loader = new THREE.GLTFLoader();
        for (let i = 0; i < dateObj.result.objects.length; i++)
        {
            (function (index) {
                var rotation = dateObj.result.objects[index].rotate === 0 ? 0 : Math.PI / 2;
                var rotateX = (dateObj.result.objects[index].length % 2 === 0) ? drift : 0;
                var rotateY = (dateObj.result.objects[index].width % 2 === 0) ? drift : 0;

                if (rotation !== 0) {
                    var temp = rotateX;
                    rotateX = rotateY;
                    rotateY = temp;
                }

                const randomColor = Math.floor(Math.random() * 16777215).toString(16);
                var material = new THREE.MeshBasicMaterial({color: parseInt(randomColor, 16)});

                if (!dateObj.result.objects[index].link)
                {
                    dateObj.result.objects[index].link = 'models/0.glb';
                }

                loader.load(
                    dateObj.result.objects[index].link,
                    function (gltf) {
                        const model = gltf.scene;
                        // Найдем все материалы модели и установим для них текстуры
                        model.traverse((child) => {
                            if (child.isMesh) {
                                if (child.material.map)
                                {
                                    material = new THREE.MeshBasicMaterial({ map: child.material.map });
                                }
                                child.material = material;
                            }
                        });
                        model.scale.set(1, 1, 1);
                        model.rotation.z = rotation;
                        model.position.set(dateObj.result.objects[index].dotCenter.x + rotateX, dateObj.result.objects[index].dotCenter.y + rotateY, 0);

                        // Добавляем модель в сцену
                        scene.add(model);
                        objectsToRemove.push(model);
                    },
                    undefined,
                    function (error) {
                        // Если модель отсутствует, то заменяем её на примитивный полигон (параллелепипед)
                        const geometry = new THREE.BoxGeometry(dateObj.result.objects[index].length, dateObj.result.objects[index].width, dateObj.result.objects[index].height);
                        const oneObject = new THREE.Mesh(geometry, material);

                        oneObject.position.set(dateObj.result.objects[index].dotCenter.x + rotateX, dateObj.result.objects[index].dotCenter.y + rotateY, 0.5);
                        oneObject.rotation.z = rotation;
                        scene.add(oneObject);
                        objectsToRemove.push(oneObject);
                        console.error('Error loading 3D model', error);
                    }
                );
            })(i);
        }
    }

    // Направление по оси OX
    function directionX(event)
    {
        var currentMouseX = event.clientX;
        var direction = 1;

        if (currentMouseX < previousMouseX) {
            direction *=  -1;
        }

        previousMouseX = currentMouseX;
        return direction;
    }

    // Обновляем угол поворота камеры
    function whereGoCamera(event)
    {
        degreeCamera += 90 * directionX(event);
    }

    // Обновляем данные камеры для поворота
    function updateCamera()
    {
        if (Math.abs(degreeCamera) === 360 || degreeCamera === 0)
        {
            degreeCamera = 0;
            camera.position.set(0, -(gridSizeY / 2), gridSizeZ);
            camera.rotation.set(0.5, 0, 0);
        }
        else if (degreeCamera === 90 || degreeCamera === -270)
        {
            camera.position.set(-(gridSizeX / 2), 0, gridSizeZ);
            camera.rotation.set(0, -0.5, -Math.PI/2);
        }
        else if (Math.abs(degreeCamera) === 180)
        {
            camera.position.set(0, gridSizeY / 2, gridSizeZ);
            camera.rotation.set(-0.5, 0, Math.PI);
        }
        else if (degreeCamera === -90 || degreeCamera === 270)
        {
            camera.position.set(gridSizeX / 2, 0, gridSizeZ);
            camera.rotation.set(0, 0.5, Math.PI/2);
        }

        camera.updateMatrixWorld();
    }

    function onMouseDown()
    {
        isRotateCamera = true;
        previousMouseX = event.clientX;
    }

    function onMouseUp()
    {
        if (isRotateCamera )
        {
            isRotateCamera = false;
            whereGoCamera(event);
            updateCamera();
        }
    }

    function zoom(event)
    {
        const delta = event.deltaY > 0 ? 1 : -1;
        camera.position.z += delta;
        event.preventDefault();
    }

    sceneContainer.addEventListener('mousedown', onMouseDown, false);
    sceneContainer.addEventListener('mouseup', onMouseUp, false);
    sceneContainer.addEventListener('wheel', zoom, false);

    function removeFromScene() {
        for (let object of objectsToRemove) {
            scene.remove(object);
        }
        objectsToRemove = [];
    }

    //------------------------------------

    function animate()
    {
        requestAnimationFrame( animate );
        renderer.render( scene, camera );
    }
    animate();

</script>

<script>
    var date = '<?php echo $data; ?>';
    init(date);
</script>