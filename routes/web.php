<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\StockController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\EmployeeController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
// Root Route
Route::get('/', [UserController::class, 'loginPage'])->name('loginPage');


// Route::post('/dashboard', [UserController::class, 'login'])->name('signin');
Route::post('/login', [UserController::class, 'customLogin'])->name('login');

// Product Roautes

Route::group(['middleware' => 'auth'], function(){

    Route::get('/dashboard', function () {
        return view('pages.dashboard');
    })->name('dashboard');

    Route::get('/add-products', [ProductController::class, 'showAddProduct'])->name('show-add-product');
    Route::post('/add-products', [ProductController::class, 'add'])->name('add-product');
    Route::get('/product-in-voucher', [ProductController::class, 'stockIn'])->name('stockInVoucher');
    Route::get('/product-out', [ProductController::class, 'stockOut'])->name('stockOutPage');
    Route::post('/product-out-voucher', [ProductController::class, 'stockOutInsert'])->name('stockOut');
    Route::get('/all-product', [ProductController::class, 'allProduct'])->name('all-product');
    Route::get('/update-product/{id}', [ProductController::class, 'updateProduct'])->name('update-product');
    Route::post('/update/product/{id}', [ProductController::class, 'update'])->name('product.update');
    
    Route::get('/stock/product', [StockController::class, 'stockInBundlePage'])->name('stockInBundlePage');
    Route::post('/stock/product', [StockController::class, 'stockInBundle'])->name('product.bundle');
    Route::get('/stock/product/details', [StockController::class, 'stockInDetails'])->name('stockDetails');
    Route::get('/add/item/{id}', [StockController::class, 'stockInItems'])->name('stockInItems');
    Route::post('insert/item/{id}', [StockController::class, 'addItemToStock'])->name('addItemToStock');
    
    Route::get('delete/item/{id}', [StockController::class, 'deleteItemFromStock'])->name('deleteItemFromStock');
    
    Route::get('stock/out/bundle', [StockController::class, 'stockOutBundle'])->name('stockOutBundle');
    Route::post('stock/out/bundle/insert', [StockController::class, 'stockOutBundleInsert'])->name('stockOutBundleInsert');
    Route::get('stock/out/details', [StockController::class, 'stockOutDetails'])->name('stockOutDetails');
    Route::get('stock/out/bundle/details', [StockController::class, 'stockOutBundleDetails'])->name('stockOutBundleDetails');
    Route::get('/stock/out/bundles/{id}', [StockController::class, 'stockOutItems'])->name('stockOutItems');
    Route::post('/stock/out/bundles/insert/{id}', [StockController::class, 'stockOutItemToStock'])->name('removeItemToStock');

    Route::get('delete/item/stock/out/{id}', [StockController::class, 'deleteItemFromStockOut'])->name('itemDeleteFromStockOut');

    Route::get('/stock/out/challan', [StockController::class, 'stockOutChallanPage'])->name('challanPage');
    Route::post('/stock/out/challan/insert', [StockController::class, 'stockOutChallanInsert'])->name('challanInsert');
    Route::get('/stock/out/voucher', [StockController::class, 'stockOutVoucher'])->name('stockOutVoucher');
    Route::get('/pdf', [StockController::class, 'generatePDF'])->name('createPDF');
    // Route::get('/pdf/page', [StockController::class, 'pdfPage']);

    Route::post('create/user', [UserController::class, 'createUser'])->name('createUser');
    
    Route::get('/search', [ProductController::class, 'search']);

    Route::get('/logout', [UserController::class, 'logOut'])->name('logOut');

    //  Add product to challan
    Route::get('add/product/challan/{id}',[StockController::class, 'addProductToChallan'])->name('addProductToChallan');
    Route::post('/add-products/challan', [StockController::class, 'addToChallan'])->name('addToChallan');
    Route::get('/challan/items/{id}', [StockController::class, 'challanItems'])->name('challanItems');

    //Employee section
    Route::get('/add/employee', [EmployeeController::class, 'addEmployeePage'])->name('addEmployeePage');
    Route::post('/add/employee', [EmployeeController::class, 'addEmployee'])->name('addEmployee');
    Route::get('/employee/list', [EmployeeController::class, 'employeeList'])->name('employeeList');
});
