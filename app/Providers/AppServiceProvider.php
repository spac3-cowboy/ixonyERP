<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Product;
use App\Models\User;
use App\Models\StockInItem;
use App\Models\StockOutBundleItem;
use App\Models\ChallanItem;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        view()->composer('*', function ($view) {
            $product = Product::get();
             $view->with('product', $product);});

         view()->composer('*', function ($view) {
            $totalProduct = Product::sum('base_unit');
             $view->with('totalProduct', $totalProduct);});

             view()->composer('*', function ($view) {
                $totalUser = User::count();
                 $view->with('totalUser', $totalUser);});

                 view()->composer('*', function ($view) {
                    $latestProducts = Product::orderBy('id', 'desc')->get();
                     $view->with('latestProducts', $latestProducts);});

                     view()->composer('*', function ($view) {
                        $totalStockIn = StockInItem::count();
                         $view->with('totalStockIn', $totalStockIn);});
                          
                         view()->composer('*', function ($view) {
                            $totalStockOut = StockOutBundleItem::count();
                             $view->with('totalStockOut', $totalStockOut);});

                             view()->composer('*', function ($view) {
                                $challanProduct = ChallanItem::sum('quantity');
                                
                                 $view->with('challanProduct', $challanProduct);});
    }
}
