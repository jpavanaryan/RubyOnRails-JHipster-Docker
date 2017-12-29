import './vendor.ts';

import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { Ng2Webstorage } from 'ngx-webstorage';

import { GatewayTimesheetsSharedModule, UserRouteAccessService } from './shared';
import { GatewayTimesheetsAppRoutingModule} from './app-routing.module';
import { GatewayTimesheetsHomeModule } from './home/home.module';
import { GatewayTimesheetsAdminModule } from './admin/admin.module';
import { GatewayTimesheetsAccountModule } from './account/account.module';
import { GatewayTimesheetsEntityModule } from './entities/entity.module';
import { customHttpProvider } from './blocks/interceptor/http.provider';
import { PaginationConfig } from './blocks/config/uib-pagination.config';

// jhipster-needle-angular-add-module-import JHipster will add new module here

import {
    JhiMainComponent,
    NavbarComponent,
    FooterComponent,
    ProfileService,
    PageRibbonComponent,
    ErrorComponent
} from './layouts';

@NgModule({
    imports: [
        BrowserModule,
        GatewayTimesheetsAppRoutingModule,
        Ng2Webstorage.forRoot({ prefix: 'jhi', separator: '-'}),
        GatewayTimesheetsSharedModule,
        GatewayTimesheetsHomeModule,
        GatewayTimesheetsAdminModule,
        GatewayTimesheetsAccountModule,
        GatewayTimesheetsEntityModule,
        // jhipster-needle-angular-add-module JHipster will add new module here
    ],
    declarations: [
        JhiMainComponent,
        NavbarComponent,
        ErrorComponent,
        PageRibbonComponent,
        FooterComponent
    ],
    providers: [
        ProfileService,
        customHttpProvider(),
        PaginationConfig,
        UserRouteAccessService
    ],
    bootstrap: [ JhiMainComponent ]
})
export class GatewayTimesheetsAppModule {}
