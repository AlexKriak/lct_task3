<?php

/** @var $model int[][][] */
/** @var $names string[] */
/** @var $descs string[] */


$this->title = 'Шаблоны';
$this->params['breadcrumbs'][] = [
    'label' => 'Администрация',
    'url' => ['/frontend/administration/index'],
];
$this->params['breadcrumbs'][] = $this->title;

?>

<div class="sticky-block">
    <div><h4>Добро пожаловать в генератор расстановок МАФ по шаблонам!</h4></div>
    <div>🛠️ <b>Для создания расстановки:</b> выберете интересующий шаблон, нажав кнопку "Попробовать шаблон"</div>
    <div>🔄 <b>Для поворота сцены:</b> зажмите ЛКМ и смахните в нужную сторону</div>
    <div>🔍 <b>Для приближения/отдаления:</b> прокрутите колесико мыши</div>
    <div>⚠️ <b>Обратите внимание:</b> повторная генерация не гарантирует появление ранее созданной сцены. Каждая генерация уникальна!</div>
</div>

<div id="carouselExampleCaptions" class="carousel slide">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <?php

        $activeFlag = false;

        for ($c = 0; $c < count($model); $c++) {
            echo !$activeFlag ? '<div class="carousel-item active">' : '<div class="carousel-item">';
            $activeFlag = true;
            echo '<div class="carousel-caption d-none d-md-block">';
            echo '<div class="template-wrapper">';
            echo '<div class="overlay"></div>';
            echo '<div class="button-container">';
            echo '<button class="btn block-btn">Попробовать шаблон</button>';
            echo '</div>';
            for ($i = 0; $i < 20; $i++) {
                echo '<div class="row">';
                for ($j = 0; $j < 20; $j++) {
                    $classname = 'cell-default';
                    if ($model[$c][$i][$j] == 1) $classname = 'cell-recreation';
                    if ($model[$c][$i][$j] == 2) $classname = 'cell-sport';
                    if ($model[$c][$i][$j] == 3) $classname = 'cell-education';
                    if ($model[$c][$i][$j] == 4) $classname = 'cell-game';
                    if ($model[$c][$i][$j] == -1) $classname = 'cell-cancel';

                    echo '<div class="cell '.$classname.'"></div>';
                }
                echo '</div>';
            }
            echo '</div>';
            echo '<h4>'.$names[$c].'</h4>';
            echo '<h6>'.$descs[$c].'</h6>';
            echo '</div>';
            echo '</div>';
        }
        ?>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Предыдущий</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Следующий</span>
    </button>
</div>

<div class="template-wrapper-desc">
    <div class="cell-t cell-recreation"></div><span> - зона рекреационных объектов</span><br>
    <div class="cell-t cell-sport"></div><span> - зона спортивных объектов</span><br>
    <div class="cell-t cell-education"></div><span> - зона развивающих объектов</span><br>
    <div class="cell-t cell-game"></div><span> - зона игровых объектов</span><br>
    <div class="cell-t cell-cancel"></div><span> - зона, в которой нельзя строить</span><br>
    <div class="cell-t cell-default"></div><span> - свободная зона</span><br>
</div>


<div class="result" id="resultId">


</div>

<div class="analytic-block">
    <p><b>Общая стоимость:</b> <span id="cost"></span> ₽</p>
    <p><b>Максимальное время производства МАФ:</b> <span id="created_time_parallel"></span> д.</p>
    <p><b>Минимальное время производства МАФ:</b> <span id="created_time_sequence"></span> д.</p>
    <p><b>Максимальное время установки:</b> <span id="install_time_parallel"></span> д.</p>
    <p><b>Минимальное время установки:</b> <span id="install_time_sequence"></span> д.</p>
    <p><b>Необходимо работников для установки (при условии разных работников на каждый МАФ):</b> <span id="workers_count"></span> ч.</p>
    <p><b>Производители:</b> <span id="creators_list"></span></p>
    <p><b>Стиль:</b> <span id="style"></span></p>
</div>


<div id="scene-container"></div>
<div id="anal-block"></div>


<style>
    .analytic-block {
        border-radius: 10px;
        background-color: #f5f5f5;
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 10px;
        width: 100%;
    }
    .analytic-block > p {
        font-family: "Nunito", sans-serif;
        font-size: 16px;
    }
    #scene-container {
        height: 600px;
    }
    #scene-container canvas {
        border-radius: 15px;
    }
    .carousel-item {
        width: 100%;
        height: 850px;
        /*background-color: #8860cf;*/
        border-radius: 20px;

        border: 0.1px solid white;
        background: rgba(255, 255, 255, 0.2);
        box-shadow: 0 0 15px #644bb1;
    }

    .template-wrapper {
        padding: 30px;
        background-color: white;
        border-radius: 15px;
        width: 100%;
        margin: 10px;
    }

    .template-wrapper-desc {
        padding: 30px;
        background-color: white;
        border-radius: 15px;
        margin: 10px 0 10px 0;
    }

    .cell {
        width: 26px;
        height: 26px;
        border-radius: 5px;
        margin: 3px;
    }

    .cell-t {
        width: 26px;
        height: 26px;
        border-radius: 5px;
        margin: 3px;

        display: inline-block;
        vertical-align: middle;
    }

    .cell-t span {
        display: inline-block;
        vertical-align: middle;
        margin-left: 5px; /* Добавляем отступ слева, если нужно */
    }

    .cell-default {
        border: 1px solid #6c6c6c;
        background-color: #b8b8b8;
    }

    .cell-sport {
        border: 1px solid #3b7233;
        background-color: #b7e2ae;
    }

    .cell-recreation {
        border: 1px solid #2b6a92;
        background-color: #9dcae5;
    }

    .cell-education {
        border: 1px solid #823f89;
        background-color: #d4a4de;
    }

    .cell-game {
        border: 1px solid #74762f;
        background-color: #faf0ae;
    }

    .cell-cancel {
        border: 1px solid #842a2a;
        background-color: #d59191;
    }

    .row {
        display: flex;
        justify-content: center;
    }

    .row .cell {
        width: 26px !important;
        height: 26px !important;
    }

    .overlay {
        display: none;
        position: absolute;
        top: 0;
        left: 10px;
        width: 100%;
        height: 700px;
        margin-top: 30px;
        background: rgba(0, 0, 0, 0.5);
        z-index: 1;
        border-radius: 14px;
    }

    .button-container {
        display: none;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 2;
    }

    .block-btn {
        background-color: white;
        border: 1.5px solid #361967;
        font-size: 22px;
        padding: 15px 25px 15px 25px;
        border-radius: 10px;
        font-family: "Nunito", sans-serif;
        font-weight: 700;
        color: #361967;
    }

    .block-btn:hover {
        background-color: #4c2c81;
        border: 1px solid #361967;
        color: white;
    }

    .result {
        /*margin-top: 50px;
        height: 700px;*/
    }
    .sticky-block {
        padding: 30px;
        background-color: white;
        border-radius: 15px;
        margin: 10px 0 10px 0;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const templateWrappers = document.querySelectorAll('.template-wrapper');

        templateWrappers.forEach((templateWrapper, index) => {
            const overlay = document.createElement('div');
            const buttonContainer = document.createElement('div');
            const button = document.createElement('button');
            const loadingIcon = document.createElement('div');

            overlay.classList.add('overlay');
            templateWrapper.appendChild(overlay);

            buttonContainer.classList.add('button-container');
            button.textContent = 'Попробовать шаблон ' + (index + 1);
            button.classList.add('btn', 'block-btn');
            buttonContainer.appendChild(button);
            loadingIcon.classList.add('loading-icon');
            loadingIcon.innerHTML = '<img src="./img/loading.gif" alt="Подождите...">';
            loadingIcon.style.display = 'none';
            buttonContainer.appendChild(loadingIcon);

            templateWrapper.appendChild(buttonContainer);

            templateWrapper.addEventListener('mouseenter', function () {
                overlay.style.display = 'block';
                buttonContainer.style.display = 'block';
            });

            templateWrapper.addEventListener('mouseleave', function () {
                overlay.style.display = 'none';
                buttonContainer.style.display = 'none';
            });

            button.addEventListener('click', function () {
                const params = {
                    templateId: index + 1,
                };

                sendAjaxRequest(params, loadingIcon);
            });
        });

        function sendAjaxRequest(params, loadingIcon) {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "index.php?r=/backend/demo/generate-template-ajax&tId=" + params['templateId'], true);

            xhr.onload = function() {
                if (xhr.status >= 200 && xhr.status < 300) {
                    scrollToAnchor('resultId');
                    removeFromScene();
                    init(xhr.responseText);
                    addDate(xhr.responseText);
                } else {
                    console.error("Ошибка при загрузке данных: " + xhr.status);
                }
                loadingIcon.style.display = 'none';
            };

            xhr.onerror = function() {
                console.error("Произошла ошибка при выполнении запроса.");
                loadingIcon.style.display = 'none';
            };

            xhr.send();
            loadingIcon.style.display = 'block';
        }

        function scrollToAnchor(anchorId) {
            const anchor = document.getElementById(anchorId);
            if (anchor) {
                anchor.scrollIntoView({ behavior: 'smooth' }); // плавная прокрутка к якорю
            }
        }
    });

    function addDate(date)
    {
        datePars = JSON.parse(date);
        document.getElementById('cost').textContent = datePars.analytic.data.summary;
        document.getElementById('workers_count').textContent = datePars.analytic.data.workers_count;
        document.getElementById('install_time_sequence').textContent = datePars.analytic.data.install_time_parallel;
        document.getElementById('install_time_parallel').textContent = datePars.analytic.data.install_time_sequence;
        document.getElementById('created_time_sequence').textContent = datePars.analytic.data.created_time_parallel;
        document.getElementById('created_time_parallel').textContent = datePars.analytic.data.created_time_sequence;
        document.getElementById('creators_list').textContent = datePars.analytic.data.creators_list;
        document.getElementById('style').textContent = datePars.analytic.data.style;
    }
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
                    //dateObj.result.objects[index].link = 'models/0.glb';
                    dateObj.result.objects[index].link = 'models/educational/Маятник Ньютона с подложкой.glb';
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

                        oneObject.position.set(dateObj.result.objects[index].dotCenter.x + rotateX, dateObj.result.objects[index].dotCenter.y + rotateY, dateObj.result.objects[index].height / 2);
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